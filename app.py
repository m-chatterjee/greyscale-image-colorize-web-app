from flask import Flask,render_template,request,redirect,url_for,flash
import os
import tensorflow as tf
from tensorflow.keras.preprocessing.image import img_to_array, load_img
from skimage.transform import resize
from skimage.io import imsave
import numpy as np
from skimage.color import rgb2lab, lab2rgb,gray2rgb
from tensorflow.keras.models import Sequential
from tensorflow.keras.applications.vgg16 import VGG16

vgg16 = VGG16()
vgg_up_to_19th = Sequential() 

"""
Because we are going to replace the encoder part with VGG16, 
we don’t need it as a classifier, we need it as a feature extractor so, 
the last dense layers isn’t needed we have to pop them up.
here, we iterate on each layer except the last dense layers so, 
we add 19 layer to our model. the dimension of last layer volume is “7x7x512”. 
we will be using that latent space volume as a feature vector to be input to the decoder.
 and the decoder is going to learn the mapping from the latent space vector to ab channels. 
 we want the layers of VGG16 with its original weights without changing them, 
 so that we set the trainable parameter in each layer to false because we don’t want to train them again.
"""

for i, layer in enumerate(vgg16.layers):
    if i<19:          #Only up to 19th layer to include feature extraction only
      vgg_up_to_19th.add(layer)
vgg_up_to_19th.summary()
for layer in vgg_up_to_19th.layers:
  layer.trainable=False   #We don't want to train these layers again, so False. 

  
app=Flask(__name__,static_url_path='/static')

UPLOAD_FOLDER = 'static/uploads/'
app.secret_key = "my_key"
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['MAX_CONTENT_LENGTH'] = 16 * 1024 * 1024

VALID_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])

def allowed_file(filename):
  return '.' in filename and filename.rsplit('.', 1)[1].lower() in VALID_EXTENSIONS

@app.route('/',methods=['GET'])
def index():
    return render_template("index.html",isGenerated=False)

@app.route('/', methods=['POST'])
def upload_image():
  file = request.files['file']
  if file and allowed_file(file.filename):
    file.save(os.path.join(app.config['UPLOAD_FOLDER'], 'input.jpg'))
    category=request.values.get('category')
    predict(category)
    return render_template('index.html',isGenerated=True)
  else:
    flash('Allowed image types are -> png, jpg, jpeg, gif')
    return redirect(request.url)

@app.route('/display/<filename>')
def display_image(filename):
  return redirect(url_for('static', filename='results/' + filename), code=301)

def predict(category):
    model = tf.keras.models.load_model('models/{}_model.model'.format(category),
                                    custom_objects=None,
                                    compile=True)

    img_to_process=img_to_array(load_img('static/uploads/'+'input.jpg'))
    img_to_process = resize(img_to_process, (224,224), anti_aliasing=True)
    img_to_process*= 1.0/255
    lab = rgb2lab(img_to_process)
    l = lab[:,:,0]
    L = gray2rgb(l)
    L = L.reshape((1,224,224,3))
    vgg_prediction = vgg_up_to_19th.predict(L)
    ab = model.predict(vgg_prediction)
    ab = ab*128
    result = np.zeros((224, 224, 3))
    result[:,:,0] = l
    result[:,:,1:] = ab
    rgb_result_array=lab2rgb(result)
    imsave('static/results/result.jpg',rgb_result_array)

if __name__=='__main__':
    app.run(debug=True,host="127.0.0.1",port=2000)
