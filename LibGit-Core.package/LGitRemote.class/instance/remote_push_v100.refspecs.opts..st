libgit - calls
remote_push_v100: remote refspecs: refspecs opts: opts
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_push #(self , LGitStringArray * refspecs , LGitPushOptionsV100 *opts))
		options: #(optCoerceNilToNull)