libgit - calls
tree_free: handle
	
	^ self ffiCallSafely: #(void git_tree_free #(void *handle)) options: #()