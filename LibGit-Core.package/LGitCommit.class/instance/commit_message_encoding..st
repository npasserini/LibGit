libgit-calls
commit_message_encoding: commit
	
	^ self
		ffiCallSafely: #(String git_commit_message_encoding #(self))
		options: #()