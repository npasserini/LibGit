libgit-calls
remote_url
	^ self
		ffiCallSafely: #(String git_remote_url #(self))
		options: #()