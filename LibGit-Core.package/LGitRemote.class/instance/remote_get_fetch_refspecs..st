libgit - calls
remote_get_fetch_refspecs: array
	^ self ffiCallSafely: #(int git_remote_get_fetch_refspecs(LGitStringArray *array, self))