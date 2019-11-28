libgit-calls
diff_init_options: opts version: version
	^ self
		ffiCall: #(LGitReturnCodeEnum git_diff_init_options(LGitDiffOptions * self, LGitOptionsVersionsEnum version))
		options: #(  )