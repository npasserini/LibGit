libgit - calls
branch_iterator_free: handle
	
	^ self
		ffiCallSafely: #(void git_branch_iterator_free #(void *handle))
		options: #()