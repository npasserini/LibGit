libgit - calls
repository_open: out bare_path: bare_path
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_repository_open #(LGitRepository * out , String bare_path))
		options: #()