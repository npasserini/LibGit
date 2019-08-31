libgit-calls
tag_free: handle
	^ self ffiCallSafely: #(void git_tag_free #(void *handle)) options: #()