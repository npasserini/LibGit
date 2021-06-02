libgit - calls
reference_is_remote
	^ self ffiCallSafely: #(Boolean git_reference_is_remote #(self)) options: #()