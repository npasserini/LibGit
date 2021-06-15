libgit - calls
remote_list: out
	^ self 
		ffiCallSafely: #( int git_remote_list ( LGitStringArray *out, self ) ) 
		options: #()