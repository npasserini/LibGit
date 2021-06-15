libgit - calls
index_write

	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_index_write #(self))
		options: #()