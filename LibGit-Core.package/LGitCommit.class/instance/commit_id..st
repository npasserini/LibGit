libgit-calls
commit_id: commit
	
	^ self ffiCallSafely: #(void * git_commit_id #(self)) options: #()