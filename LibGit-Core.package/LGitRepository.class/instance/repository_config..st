libgit-calls
repository_config: config
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_repository_config(LGitConfig *config, self))
		options: #()