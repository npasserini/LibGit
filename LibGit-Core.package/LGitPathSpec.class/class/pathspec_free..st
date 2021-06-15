libgit - calls
pathspec_free: handle
	^ self ffiCallSafely: #(void git_pathspec_free (void *handle)) options: #()