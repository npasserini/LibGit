libgit - calls
commit_time: commit
	
	^ self ffiCallSafely: #(int64 git_commit_time #(self)) options: #()