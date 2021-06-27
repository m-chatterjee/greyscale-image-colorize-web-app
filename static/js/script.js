function modalResultShow() {
    if (isGenerated == 'true') {
        var myModal = new bootstrap.Modal(document.getElementById('result_image_modal'), {
            keyboard: false
        })
        myModal.show();
    } else {
        alert("No output image to show. Upload a greyscale image first")
        document.getElementById("formFileSm").focus();

    }

}
window.addEventListener("load", () => {
    if (isGenerated == 'true') {
        modalResultShow();
    } else {
        var splash = new Splash();

        splash.fromText("IMAGE COLORIZER App by\n Mainak Chatterjee\nSwarnadip Mukherjee\nNilanjan Mandal\nSahin Aktar\n \n GCETTB", 4000, {

        });

        // splash.fromImage("logo.jpg", 5000, {

        // });
    }
});

function submitForm() {
    file = document.getElementById("formFileSm")
    category = document.getElementById("category")
    if (file.value !== '' && category.value !== 'Select') {
        document.getElementById("inputForm").submit();
        document.getElementById("inputForm").reset();
    } else {
        if (file.value === '' && category.value === 'Select') {
            file.focus();
            category.focus();
        } else if (file.value === '') {
            file.focus();
        } else if (category.value === 'Select') {
            category.focus();
        }
    }
}