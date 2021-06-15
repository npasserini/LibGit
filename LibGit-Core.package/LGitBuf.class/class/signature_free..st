libgit - calls
signature_free: handle 
	^ self
		ffiCallSafely: #(void git_buf_free(void *handle))
		options: #(  )