libgit-calls
remote_push: remote refspecs: refspecs opts: opts
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_push #(self , LGitStringArray * refspecs , void * opts))
		options: #(optCoerceNilToNull)