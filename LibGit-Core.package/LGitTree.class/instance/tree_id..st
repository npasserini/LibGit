libgit - calls
tree_id: tree
	
	^ self ffiCallSafely: #(void * git_tree_id #(self)) options: #()