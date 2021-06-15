libgit - calls
merge_base: out between: one and: two
	^ self ffiCallSafely: #(	LGitReturnCodeEnum git_merge_base #(
			LGitId * out, 
			self, 
			LGitId * one, 
			LGitId * two))
		options: #()