?	???uR<@???uR<@!???uR<@	!U?LR@!U?LR@!!U?LR@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???uR<@p?DIH?@1?'??9?2@ASz??˔?IG????@Y?<c_?q??rEagerKernelExecute 0*	㥛? ?d@2F
Iterator::Modelp????M??!??ߪouF@)?\??J??1;??ۖ>@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat.?_x%ɣ?!?2n??7@)'???????1??X?6r3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??L???!yI?1kX7@)????!9??1N??NNX-@:Preprocessing2U
Iterator::Model::ParallelMapV2zZ?????!Vj???,@)zZ?????1Vj???,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice6Y??э?!??0?X!@)6Y??э?1??0?X!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipȳ˷>???!M_ U??K@)?a0?̅?1΄r\@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor<hv?[?x?!??? ?@)<hv?[?x?1??? ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??k?6??!??at)?9@)O!W?Yp?1??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?17.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9!U?LR@Il??:?@@Q?b??LP@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	p?DIH?@p?DIH?@!p?DIH?@      ??!       "	?'??9?2@?'??9?2@!?'??9?2@*      ??!       2	Sz??˔?Sz??˔?!Sz??˔?:	G????@G????@!G????@B      ??!       J	?<c_?q???<c_?q??!?<c_?q??R      ??!       Z	?<c_?q???<c_?q??!?<c_?q??b      ??!       JGPUY!U?LR@b ql??:?@@y?b??LP@?"-
IteratorGetNext/_3_SendG?.nQ???!G?.nQ???"k
?gradient_tape/sequential_2/conv2d_5/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?k??Z??!??}f??0"1
mean_squared_error/MeanMean:?8????!?St7???":
sequential_2/conv2d_5/Conv2DConv2D??Lȷ???!R??mN???0"k
?gradient_tape/sequential_2/conv2d_4/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter?oz???!K:???>??0"-
IteratorGetNext/_1_Send??1<2???!m?w???"i
=gradient_tape/sequential_2/conv2d/Conv2D/Conv2DBackpropFilterConv2DBackpropFilters???z??!hE?A܊??0":
sequential_2/conv2d/Relu_FusedConv2D?? ??g??!?OM{T???"i
>gradient_tape/sequential_2/conv2d_5/Conv2D/Conv2DBackpropInputConv2DBackpropInput???flz??!c??A????0"k
?gradient_tape/sequential_2/conv2d_3/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter-??h??!ܝ?<t??0Q      Y@Y?'Ni^,@a?=?2tU@q?wY???y?er I???"?

both?Your program is POTENTIALLY input-bound because 14.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?17.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Turing)(: B 