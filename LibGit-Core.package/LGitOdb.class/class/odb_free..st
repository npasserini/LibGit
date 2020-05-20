libgit-calls
odb_free: handle
	
	^ self ffiCallSafely: #(void git_odb_free #(void *handle)) options: #()