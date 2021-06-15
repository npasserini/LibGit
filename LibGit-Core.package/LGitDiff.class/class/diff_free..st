libgit - calls
diff_free: handle
	
	^ self ffiCallSafely: #(void git_diff_free #(void *handle)) options: #()