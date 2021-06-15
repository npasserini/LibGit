libgit - calls
revwalk_free: handle
	
	^ self ffiCallSafely: #(void git_revwalk_free #(void *handle)) options: #()