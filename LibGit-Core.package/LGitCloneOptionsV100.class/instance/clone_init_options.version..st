libgit-calls
clone_init_options: opts version: version 
	^ self
		ffiCall: #(LGitReturnCodeEnum git_clone_init_options(LGitCloneOptionsV100 *opts, LGitOptionsVersionsEnum version))
		options: #(  )