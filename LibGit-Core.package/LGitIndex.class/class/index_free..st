libgit - calls
index_free: handle
	
	^ self ffiCallSafely: #(void git_index_free #(void *handle)) options: #()