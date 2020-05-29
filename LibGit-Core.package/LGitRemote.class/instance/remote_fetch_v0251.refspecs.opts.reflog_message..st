libgit-calls
remote_fetch_v0251: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_fetch #(self , LGitStringArray * refspecs , LGitFetchOptionsV02x * opts , String reflog_message))
		options: #(optCoerceNilToNull)