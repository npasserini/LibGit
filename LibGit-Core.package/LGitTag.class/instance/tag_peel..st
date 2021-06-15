libgit - calls
tag_peel: result
	^ self
		ffiCallSafely: #(#LGitReturnCodeEnum git_tag_peel(LGitObject *result, self))
		options: #()