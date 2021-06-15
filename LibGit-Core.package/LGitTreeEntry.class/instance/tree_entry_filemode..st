libgit - calls
tree_entry_filemode: entry
	
	^ self
		ffiCallSafely: #(LGitFilemodeEnum git_tree_entry_filemode #(self))
		options: #()