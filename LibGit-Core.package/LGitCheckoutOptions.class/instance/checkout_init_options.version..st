libgit - calls
checkout_init_options: opts version: version 
	^ self
		ffiCall: #(int git_checkout_init_options(LGitCheckoutOptions * self, LGitOptionsVersionsEnum version))
		options: #(  )