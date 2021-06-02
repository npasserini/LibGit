libgit - calls
reference_free: handle
	^ self
		ffiCallSafely: #(void git_reference_free #(void *handle))
		options: #()