libgit - calls
reference_is_branch: ref
	
	^ self ffiCallSafely: #(int git_reference_is_branch #(self)) options: #()