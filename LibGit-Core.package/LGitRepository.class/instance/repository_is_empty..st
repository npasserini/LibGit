libgit-calls
repository_is_empty: repo
	
	^ self ffiCallSafely: #(Boolean git_repository_is_empty #(self)) options: #()