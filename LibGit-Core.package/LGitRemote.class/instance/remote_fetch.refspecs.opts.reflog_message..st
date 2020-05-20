libgit-calls
remote_fetch: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_fetch #(self , LGitStringArray * refspecs , void * opts , String reflog_message))
		options: #(optCoerceNilToNull)