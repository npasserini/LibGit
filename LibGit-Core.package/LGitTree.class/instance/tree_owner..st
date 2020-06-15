libgit-calls
tree_owner: tree
	
	^ self ffiCallSafely: #(LGitRepository git_tree_owner #(self)) options: #()