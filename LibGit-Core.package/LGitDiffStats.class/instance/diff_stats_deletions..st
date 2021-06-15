libgit - calls
diff_stats_deletions: stats
	
	^ self
		ffiCallSafely: #(size_t git_diff_stats_deletions #(self))
		options: #()