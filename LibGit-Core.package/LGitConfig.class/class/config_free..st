libgit - calls
config_free: handle
	^ self
		ffiCallSafely: #(void git_config_free #(void *handle))
		options: #()