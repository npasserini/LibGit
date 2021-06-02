libgit - calls
checkout_treeish: treeish opts: opts
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_checkout_tree #(self , LGitObject treeish , LGitCheckoutOptions * opts))
		options: #()