libgit - calls
credentials: credentials
	^ self
		ffiCallSafely: #(void #(LGitCredentials * credentials))
		options: #(optMayGC)