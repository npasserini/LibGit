libgit - calls
index_write_tree: out index: index
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_index_write_tree #(LGitId * out , self))
		options: #()