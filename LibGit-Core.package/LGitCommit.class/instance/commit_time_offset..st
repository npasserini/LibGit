libgit-calls
commit_time_offset: commit
	
	^ self ffiCallSafely: #(int git_commit_time_offset #(self)) options: #()