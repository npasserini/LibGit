libgit - calls
revwalk_push_head: walk
	
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_revwalk_push_head #(self))
		options: #()