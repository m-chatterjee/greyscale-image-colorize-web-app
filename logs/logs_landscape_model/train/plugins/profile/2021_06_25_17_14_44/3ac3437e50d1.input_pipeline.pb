	???uR<@???uR<@!???uR<@	!U?LR@!U?LR@!!U?LR@"?
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
	p?DIH?@p?DIH?@!p?DIH?@      ??!       "	?'??9?2@?'??9?2@!?'??9?2@*      ??!       2	Sz??˔?Sz??˔?!Sz??˔?:	G????@G????@!G????@B      ??!       J	?<c_?q???<c_?q??!?<c_?q??R      ??!       Z	?<c_?q???<c_?q??!?<c_?q??b      ??!       JGPUY!U?LR@b ql??:?@@y?b??LP@