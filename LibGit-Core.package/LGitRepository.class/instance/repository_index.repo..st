libgit-calls
repository_index: out repo: repo
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_repository_index #(LGitIndex * out , self))
		options: #()