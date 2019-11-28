libgit-calls
blob_free: handle
	
	^ self
		ffiCallSafely: 	#(void git_blob_free(void *handle))
		options: #()