libgit - calls
revwalk_hide: commitId
	^ self 
		ffiCallSafely:
			#(LGitReturnCodeEnum git_revwalk_hide #(self , LGitId * commitId))
		options: #()