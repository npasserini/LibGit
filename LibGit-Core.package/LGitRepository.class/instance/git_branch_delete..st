libgit-calls
git_branch_delete: gitReference
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_branch_delete #(LGitReference gitReference))
		options: #()