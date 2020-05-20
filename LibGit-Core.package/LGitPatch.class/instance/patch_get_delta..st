libgit-calls
patch_get_delta: patch
	
	^ self
		ffiCallSafely: #(LGitDiffDelta * git_patch_get_delta #(self))
		options: #()