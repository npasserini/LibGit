libgit-calls
resetTo: target resetType: aResetType checkoutOptions: checkout_opts

	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_reset(self, LGitObject target, LGitResetTypeEnum aResetType, LGitCheckoutOptions *checkout_opts))
		options: #()
