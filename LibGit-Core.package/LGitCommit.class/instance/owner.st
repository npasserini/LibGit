accessing
owner

	^ self 
		ffiCallSafely: #(void *git_commit_owner(self)) 
		options: #()
