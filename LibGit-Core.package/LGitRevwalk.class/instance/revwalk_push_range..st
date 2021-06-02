libgit - calls
revwalk_push_range: range
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_revwalk_push_range #(self , String range))
		options: #()