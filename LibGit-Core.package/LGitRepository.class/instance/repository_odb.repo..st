libgit-calls
repository_odb: out repo: repo
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_repository_odb #(LGitOdb * out , self))
		options: #()