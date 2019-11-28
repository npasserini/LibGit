libgit-calls
treebuilder_get: bld filename: filename
	
	^ self
		ffiCallSafely: #(LGitTreeEntry git_treebuilder_get #(self , String filename))
		options: #()