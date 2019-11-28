libgit-calls
push_init_options: options version: version
	self
		ffiCall: #(LGitReturnCodeEnum git_push_init_options(LGitPushOptions * self, LGitOptionsVersionsEnum version))
		options: #()