libgit - calls
treebuilder_free: handle
	
	^ self
		ffiCallSafely: #(void git_treebuilder_free #(void *handle))
		options: #()