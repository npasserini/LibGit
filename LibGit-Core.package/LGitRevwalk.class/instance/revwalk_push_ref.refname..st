libgit - calls
revwalk_push_ref: walk refname: refname
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_revwalk_push_ref #(self , String refname))
		options: #()