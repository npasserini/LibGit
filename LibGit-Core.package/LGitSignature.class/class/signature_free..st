libgit-calls
signature_free: handle 
	^ self
		ffiCallSafely: #(void git_signature_free(void *handle))
		options: #(  )