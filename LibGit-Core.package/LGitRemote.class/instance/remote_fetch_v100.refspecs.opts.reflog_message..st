libgit-calls
remote_fetch_v100: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_fetch #(self , LGitStringArray * refspecs , LGitFetchOptionsV100 * opts , String reflog_message))
		options: #(optCoerceNilToNull)