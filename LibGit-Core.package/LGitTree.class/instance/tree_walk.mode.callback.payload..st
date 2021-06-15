libgit - calls
tree_walk: tree mode: mode callback: callback payload: payload
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_tree_walk #(LGitTree tree , LGitTreewalkModeEnum mode , LGitTreewalkCallback callback , void *payload))
		options: #(optMayGC optCoerceNilToNull)