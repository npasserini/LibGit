libgit - calls
tree_entry_name: entry
	
	^ self ffiCallSafely: #(String git_tree_entry_name #(self)) options: #()