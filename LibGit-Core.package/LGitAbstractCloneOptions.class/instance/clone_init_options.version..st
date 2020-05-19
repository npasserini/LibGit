libgit-calls
clone_init_options: opts version: version 
	^ self
		callUnchecked: #(LGitReturnCodeEnum git_clone_init_options(void *opts, LGitOptionsVersionsEnum version))
		options: #(  )