libgit-calls
remote_push_v0251: remote refspecs: refspecs opts: opts
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_push #(self , LGitStringArray * refspecs , LGitPushOptionsV02x *opts))
		options: #(optCoerceNilToNull)