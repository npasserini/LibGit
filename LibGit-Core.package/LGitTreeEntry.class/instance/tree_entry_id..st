libgit-calls
tree_entry_id: entry
	
	^ self ffiCallSafely: #(void * git_tree_entry_id #(self)) options: #()