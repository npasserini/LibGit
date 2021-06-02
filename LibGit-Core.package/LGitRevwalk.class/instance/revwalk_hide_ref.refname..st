libgit - calls
revwalk_hide_ref: walk refname: refname
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_revwalk_hide_ref #(self , String refname))
		options: #()