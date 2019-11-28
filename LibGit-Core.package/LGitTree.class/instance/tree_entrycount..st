libgit-calls
tree_entrycount: tree
	
	^ self ffiCallSafely: #(int git_tree_entrycount #(self)) options: #()