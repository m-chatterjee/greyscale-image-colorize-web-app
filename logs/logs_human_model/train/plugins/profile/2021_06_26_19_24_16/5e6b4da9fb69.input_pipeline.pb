	F?=??&9@F?=??&9@!F?=??&9@	3?V?m@3?V?m@!3?V?m@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLF?=??&9@l{?%9?@1HQg?!13@A^M??????I?<????Y?i?:???rEagerKernelExecute 0*	?n??f@2F
Iterator::Model???N????!\l??E@)?\S ????1?T?0,f;@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?C?l????!Y?ց6?<@)?磌? ??1L+??/6@:Preprocessing2U
Iterator::Model::ParallelMapV2CY??Z???!ehD?~-@)CY??Z???1ehD?~-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate~?Ɍ????!?ug?P?0@)?????َ?1vL@!@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicei??>?Q??!nς̃? @)i??>?Q??1nς̃? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??`?H??!???A?L@)b?{??ˉ?1(W{? ?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoro?????!4?R?z?@)o?????14?R?z?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapwe????!$Rr??5@)?F?I???1?p+???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no92?V?m@I<n?V3@Q^?ٍ?S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	l{?%9?@l{?%9?@!l{?%9?@      ??!       "	HQg?!13@HQg?!13@!HQg?!13@*      ??!       2	^M??????^M??????!^M??????:	?<?????<????!?<????B      ??!       J	?i?:????i?:???!?i?:???R      ??!       Z	?i?:????i?:???!?i?:???b      ??!       JGPUY2?V?m@b q<n?V3@y^?ٍ?S@