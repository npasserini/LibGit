libgit-calls
commit_tree: tree_out commit: commit
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_commit_tree #(LGitTree *tree_out , self))
		options: #()