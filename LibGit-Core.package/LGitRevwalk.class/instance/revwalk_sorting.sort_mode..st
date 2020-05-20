libgit-calls
revwalk_sorting: walk sort_mode: sort_mode
	
	^ self
		ffiCallSafely: #(void git_revwalk_sorting #(self , uint sort_mode))
		options: #()