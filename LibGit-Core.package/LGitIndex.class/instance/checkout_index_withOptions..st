libgit-calls
checkout_index_withOptions: opts
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum 
			git_checkout_index(
				LGitRepository repository, 
				self, 
				LGitCheckoutOptions *opts))
		options: #()
