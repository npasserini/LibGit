libgit - calls
diff_stats_free: handle
	
	^ self ffiCallSafely: #(void git_diff_stats_free #(void *handle)) options: #()