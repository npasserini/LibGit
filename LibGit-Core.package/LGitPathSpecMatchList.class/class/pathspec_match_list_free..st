libgit-calls
pathspec_match_list_free: handle
	
	^ self
		ffiCallSafely: #(void git_pathspec_match_list_free #(void *handle))
		options: #()