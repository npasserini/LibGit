libgit - calls
repository_init: out path: path is_bare: is_bare
	
	^ self
		ffiCall:
			#(int git_repository_init #(LGitRepository * out , String path , Boolean is_bare))
		options: #()