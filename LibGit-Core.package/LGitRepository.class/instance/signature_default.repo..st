libgit - calls
signature_default: out repo: repo
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_signature_default #(void **out , self))
		options: #()