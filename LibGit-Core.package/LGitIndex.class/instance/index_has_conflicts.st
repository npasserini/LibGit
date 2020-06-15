libgit-calls
index_has_conflicts 
	^ self ffiCallSafely: #(LGitReturnCodeEnum git_index_has_conflicts #(self)) options: #()