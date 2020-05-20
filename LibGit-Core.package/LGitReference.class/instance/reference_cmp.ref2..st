libgit-calls
reference_cmp: ref1 ref2: ref2
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_reference_cmp #(self , LGitReference ref2))
		options: #()