libgit-calls
tag_list: tag_names repo: repo
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_tag_list #(LGitStringArray * tag_names , LGitRepository repo))
		options: #()