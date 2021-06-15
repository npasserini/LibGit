libgit - calls
commit_parentcount: commit
	
	^ self ffiCallSafely: #(uint git_commit_parentcount #(self)) options: #()