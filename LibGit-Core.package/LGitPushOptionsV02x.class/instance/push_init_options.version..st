libgit-calls
push_init_options: options version: version
	self
		callUnchecked: #(LGitReturnCodeEnum git_push_init_options(#void * self, LGitOptionsVersionsEnum version))
		options: #()