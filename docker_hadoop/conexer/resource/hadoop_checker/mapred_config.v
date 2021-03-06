Require Export mapred_config_fields.
Require Export env_desc.
Require Export List.
Open Scope list_scope.
Open Scope string_scope.
Require Export Coq.ZArith.BinInt.
Open Scope positive_scope.
Open Scope bool_scope.
Open Scope Z_scope.

Record MapRedConfig := mk_mapred_config {
  mapred_child_java_opts: mapred_child_java_opts.ftype
 ;mapreduce_ifile_readahead: mapreduce_ifile_readahead.ftype
 ;mapreduce_ifile_readahead_bytes: mapreduce_ifile_readahead_bytes.ftype
 ;mapreduce_input_fileinputformat_split_maxsize: mapreduce_input_fileinputformat_split_maxsize.ftype
 ;mapreduce_input_fileinputformat_split_minsize: mapreduce_input_fileinputformat_split_minsize.ftype
 ;mapreduce_input_lineinputformat_linespermap: mapreduce_input_lineinputformat_linespermap.ftype
 ;mapreduce_job_counters_max: mapreduce_job_counters_max.ftype
 ;mapreduce_job_jvm_numtasks: mapreduce_job_jvm_numtasks.ftype
 ;mapreduce_job_max_split_locations: mapreduce_job_max_split_locations.ftype
 ;mapreduce_job_reduce_slowstart_completedmaps: mapreduce_job_reduce_slowstart_completedmaps.ftype
 ;mapreduce_job_reducer_unconditional__preempt_delay_sec: mapreduce_job_reducer_unconditional__preempt_delay_sec.ftype
 ;mapreduce_job_running_map_limit: mapreduce_job_running_map_limit.ftype
 ;mapreduce_job_running_reduce_limit: mapreduce_job_running_reduce_limit.ftype
 ;mapreduce_job_speculative_minimum__allowed__tasks: mapreduce_job_speculative_minimum__allowed__tasks.ftype
 ;mapreduce_job_speculative_retry__after__no__speculate: mapreduce_job_speculative_retry__after__no__speculate.ftype
 ;mapreduce_job_speculative_retry__after__speculate: mapreduce_job_speculative_retry__after__speculate.ftype
 ;mapreduce_job_speculative_speculative__cap__running__tasks: mapreduce_job_speculative_speculative__cap__running__tasks.ftype
 ;mapreduce_job_speculative_speculative__cap__total__tasks: mapreduce_job_speculative_speculative__cap__total__tasks.ftype
 ;mapreduce_job_split_metainfo_maxsize: mapreduce_job_split_metainfo_maxsize.ftype
 ;mapreduce_job_ubertask_enable: mapreduce_job_ubertask_enable.ftype
 ;mapreduce_job_ubertask_maxmaps: mapreduce_job_ubertask_maxmaps.ftype
 ;mapreduce_job_ubertask_maxreduces: mapreduce_job_ubertask_maxreduces.ftype
 ;mapreduce_jobtracker_expire_trackers_interval: mapreduce_jobtracker_expire_trackers_interval.ftype
 ;mapreduce_jobtracker_handler_count: mapreduce_jobtracker_handler_count.ftype
 ;mapreduce_jobtracker_maxtasks_perjob: mapreduce_jobtracker_maxtasks_perjob.ftype
 ;mapreduce_jobtracker_taskcache_levels: mapreduce_jobtracker_taskcache_levels.ftype
 ;mapreduce_map_cpu_vcores: mapreduce_map_cpu_vcores.ftype
 ;mapreduce_map_java_opts: mapreduce_map_java_opts.ftype
 ;mapreduce_map_memory_mb: mapreduce_map_memory_mb.ftype
 ;mapreduce_map_output_compress: mapreduce_map_output_compress.ftype
 ;mapreduce_map_output_compress_codec: mapreduce_map_output_compress_codec.ftype
 ;mapreduce_map_skip_maxrecords: mapreduce_map_skip_maxrecords.ftype
 ;mapreduce_map_skip_proc_count_autoincr: mapreduce_map_skip_proc_count_autoincr.ftype
 ;mapreduce_map_sort_spill_percent: mapreduce_map_sort_spill_percent.ftype
 ;mapreduce_map_speculative: mapreduce_map_speculative.ftype
 ;mapreduce_output_fileoutputformat_compress: mapreduce_output_fileoutputformat_compress.ftype
 ;mapreduce_output_fileoutputformat_compress_codec: mapreduce_output_fileoutputformat_compress_codec.ftype
 ;mapreduce_output_fileoutputformat_compress_type: mapreduce_output_fileoutputformat_compress_type.ftype
 ;mapreduce_reduce_cpu_vcores: mapreduce_reduce_cpu_vcores.ftype
 ;mapreduce_reduce_input_buffer_percent: mapreduce_reduce_input_buffer_percent.ftype
 ;mapreduce_reduce_java_opts: mapreduce_reduce_java_opts.ftype
 ;mapreduce_reduce_markreset_buffer_percent: mapreduce_reduce_markreset_buffer_percent.ftype
 ;mapreduce_reduce_memory_mb: mapreduce_reduce_memory_mb.ftype
 ;mapreduce_reduce_merge_inmem_threshold: mapreduce_reduce_merge_inmem_threshold.ftype
 ;mapreduce_reduce_shuffle_input_buffer_percent: mapreduce_reduce_shuffle_input_buffer_percent.ftype
 ;mapreduce_reduce_shuffle_memory_limit_percent: mapreduce_reduce_shuffle_memory_limit_percent.ftype
 ;mapreduce_reduce_shuffle_merge_percent: mapreduce_reduce_shuffle_merge_percent.ftype
 ;mapreduce_reduce_shuffle_parallelcopies: mapreduce_reduce_shuffle_parallelcopies.ftype
 ;mapreduce_shuffle_max_connections: mapreduce_shuffle_max_connections.ftype
 ;mapreduce_shuffle_max_threads: mapreduce_shuffle_max_threads.ftype
 ;mapreduce_shuffle_transfer_buffer_size: mapreduce_shuffle_transfer_buffer_size.ftype
 ;mapreduce_task_combine_progress_records: mapreduce_task_combine_progress_records.ftype
 ;mapreduce_task_io_sort_factor: mapreduce_task_io_sort_factor.ftype
 ;mapreduce_task_io_sort_mb: mapreduce_task_io_sort_mb.ftype
 ;mapreduce_task_merge_progress_records: mapreduce_task_merge_progress_records.ftype
 ;mapreduce_task_profile_maps: mapreduce_task_profile_maps.ftype
 ;mapreduce_task_profile_reduces: mapreduce_task_profile_reduces.ftype
 ;mapreduce_tasktracker_http_threads: mapreduce_tasktracker_http_threads.ftype
 ;mapreduce_tasktracker_indexcache_mb: mapreduce_tasktracker_indexcache_mb.ftype
 ;mapreduce_tasktracker_map_tasks_maximum: mapreduce_tasktracker_map_tasks_maximum.ftype
 ;mapreduce_tasktracker_reduce_tasks_maximum: mapreduce_tasktracker_reduce_tasks_maximum.ftype
 ;mapreduce_tasktracker_taskmemorymanager_monitoringinterval: mapreduce_tasktracker_taskmemorymanager_monitoringinterval.ftype
 ;yarn_app_mapreduce_am_command__opts: yarn_app_mapreduce_am_command__opts.ftype
 ;yarn_app_mapreduce_am_containerlauncher_threadpool__initial__size: yarn_app_mapreduce_am_containerlauncher_threadpool__initial__size.ftype
 ;yarn_app_mapreduce_am_job_task_listener_thread__count: yarn_app_mapreduce_am_job_task_listener_thread__count.ftype
 ;yarn_app_mapreduce_am_resource_cpu__vcores: yarn_app_mapreduce_am_resource_cpu__vcores.ftype
 ;yarn_app_mapreduce_am_resource_mb: yarn_app_mapreduce_am_resource_mb.ftype

 (* This constraint is derived from https://stackoverflow.com/a/19196022*)
 ;maxsplit_lt_minsplit: Z.gt (Zpos (mapreduce_input_fileinputformat_split_maxsize.value mapreduce_input_fileinputformat_split_maxsize)) (Z.of_N (mapreduce_input_fileinputformat_split_minsize.value mapreduce_input_fileinputformat_split_minsize))

 (* uber mode related constraints.
  These four constraints are documented in: https://hadoop.apache.org/docs/r2.7.4/hadoop-mapreduce-client/hadoop-mapreduce-client-core/mapred-default.xml 
 *)
 ;uber_const1: ((mapreduce_job_ubertask_enable.value mapreduce_job_ubertask_enable) = true) -> 
    (Pos.gt (yarn_app_mapreduce_am_resource_mb.value yarn_app_mapreduce_am_resource_mb) (mapreduce_map_memory_mb.value mapreduce_map_memory_mb))
 ;uber_const2: ((mapreduce_job_ubertask_enable.value mapreduce_job_ubertask_enable) = true) -> 
    Pos.gt (yarn_app_mapreduce_am_resource_mb.value yarn_app_mapreduce_am_resource_mb) (mapreduce_reduce_memory_mb.value mapreduce_reduce_memory_mb)
 ;uber_const3: ((mapreduce_job_ubertask_enable.value mapreduce_job_ubertask_enable) = true) -> 
    Pos.gt (yarn_app_mapreduce_am_resource_cpu__vcores.value yarn_app_mapreduce_am_resource_cpu__vcores) (mapreduce_map_cpu_vcores.value mapreduce_map_cpu_vcores)
 ;uber_const4: ((mapreduce_job_ubertask_enable.value mapreduce_job_ubertask_enable) = true) -> 
    Pos.gt (yarn_app_mapreduce_am_resource_cpu__vcores.value yarn_app_mapreduce_am_resource_cpu__vcores) (mapreduce_reduce_cpu_vcores.value mapreduce_reduce_cpu_vcores)

 (* Map and reduce task heap size should be less than mapreduce.map.memory.mb and mapreduce.reduce.memory.mb
     *)
 ;map_heap_lt_task_mem: Pos.lt (maximum_heap_size (mapreduce_map_java_opts.value mapreduce_map_java_opts))
                               (mapreduce_map_memory_mb.value mapreduce_map_memory_mb)
 ;reduce_heap_lt_task_mem: Pos.lt (maximum_heap_size (mapreduce_reduce_java_opts.value mapreduce_reduce_java_opts))
                              (mapreduce_reduce_memory_mb.value mapreduce_reduce_memory_mb)
}.



