libgit-calls
blame_free: handle
	^ self ffiCallSafely: #(void git_blame_free #(void *handle)) options: #()