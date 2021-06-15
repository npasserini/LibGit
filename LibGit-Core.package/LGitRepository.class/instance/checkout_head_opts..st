libgit - calls
checkout_head_opts: opts
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_checkout_head #(self , LGitCheckoutOptions * opts))
		options: #()