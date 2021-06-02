libgit - calls
remote_init_callbacks: opts version: version

	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_remote_init_callbacks(LGitRemoteCallbacksV100 *opts, LGitStructVersionsEnum version))
		options: #(  )