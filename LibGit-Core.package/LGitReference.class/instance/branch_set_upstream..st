libgit - calls
branch_set_upstream: upstream
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_branch_set_upstream #(self , String upstream))
		options: #()