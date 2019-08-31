libgit-calls
repository_is_bare: repo
	
	^ self ffiCallSafely: #(Boolean git_repository_is_bare #(self)) options: #()