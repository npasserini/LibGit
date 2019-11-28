libgit-calls
remote_free: handle
	
	^ self ffiCallSafely: #(void git_remote_free #(void *handle)) options: #()