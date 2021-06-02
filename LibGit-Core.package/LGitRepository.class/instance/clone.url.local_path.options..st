libgit - calls
clone: out url: url local_path: local_path options: options
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_clone (LGitRepository *out, String url, String local_path, #void *options))
		options: #(optCoerceNilToNull)