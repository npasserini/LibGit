libgit-calls
remote_delete: repo name: name
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_delete #(LGitRepository repo , String name))
		options: #()