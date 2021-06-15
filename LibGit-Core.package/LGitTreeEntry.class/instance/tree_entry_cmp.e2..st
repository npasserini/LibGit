libgit - calls
tree_entry_cmp: e1 e2: e2
	
	^ self
		ffiCallSafely: #(int git_tree_entry_cmp #(self , LGitTreeEntry e2))
		options: #()