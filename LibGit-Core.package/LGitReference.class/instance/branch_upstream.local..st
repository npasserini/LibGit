libgit - calls
branch_upstream: out local: local
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_branch_upstream #(LGitReference * out , self))
		options: #()