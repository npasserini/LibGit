libgit-calls
repository_is_unborn: repo
	^ self ffiCallSafely: #( Boolean git_repository_head_unborn (self) ) options: #()