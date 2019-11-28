libgit-calls
commit_message: commit
	
	^ self ffiCallSafely: #(String git_commit_message #(self)) options: #()