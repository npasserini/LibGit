libgit-calls
repository_free: handle
	
	^ self ffiCallSafely: #(void git_repository_free #(void *handle)) options: #()