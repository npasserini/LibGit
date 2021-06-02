libgit - calls
revwalk_new: out repo: repo
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_revwalk_new #(LGitRevwalk * self , LGitRepository repo))
		options: #()