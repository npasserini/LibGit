libgit-calls
tree_entry_type: entry
	
	^ self
		ffiCallSafely: #(LGitObjectTypeEnum git_tree_entry_type #(self))
		options: #()