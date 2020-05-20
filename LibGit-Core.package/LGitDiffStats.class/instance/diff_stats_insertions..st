libgit-calls
diff_stats_insertions: stats
	
	^ self
		ffiCallSafely: #(size_t git_diff_stats_insertions #(self))
		options: #()