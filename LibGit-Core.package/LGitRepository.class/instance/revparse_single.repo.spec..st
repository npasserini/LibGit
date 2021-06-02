libgit - calls
revparse_single: out repo: repo spec: spec
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_revparse_single #(LGitObject * out , self , String spec))
		options: #()