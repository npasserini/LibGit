libgit-calls
commit_free: handle
	
	^ self ffiCallSafely: #(void git_commit_free #(void *handle)) options: #()