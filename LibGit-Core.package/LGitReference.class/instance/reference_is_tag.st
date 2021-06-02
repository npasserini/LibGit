libgit - calls
reference_is_tag	
	^ self ffiCallSafely: #(int git_reference_is_tag #(self)) options: #()