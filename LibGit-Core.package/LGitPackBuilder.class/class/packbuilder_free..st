libgit-calls
packbuilder_free: handle
	
	^ self
		ffiCallSafely: #(void git_packbuilder_free #(void *handle))
		options: #()