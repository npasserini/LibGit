libgit-calls
revwalk_push: commitId
	^ self 
		ffiCallSafely:
			#(LGitReturnCodeEnum git_revwalk_push #(self , LGitId * commitId))
		options: #()