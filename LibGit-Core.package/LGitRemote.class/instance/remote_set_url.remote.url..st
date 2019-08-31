libgit-calls
remote_set_url: repo remote: remote url: urlString
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_set_url #(LGitRepository repo , String remote , String urlString))
		options: #()