libgit-calls
reference_type: ref
	
	^ self
		ffiCallSafely: #(LGitReferenceTypeEnum git_reference_type #(self))
		options: #()