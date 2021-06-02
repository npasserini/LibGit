libgit - calls
diff_stats_files_changed: stats
	
	^ self
		ffiCallSafely: #(size_t git_diff_stats_files_changed #(self))
		options: #()