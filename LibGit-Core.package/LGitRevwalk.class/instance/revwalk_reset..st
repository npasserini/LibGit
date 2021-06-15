libgit - calls
revwalk_reset: revwalk
	
	^ self ffiCallSafely: #(void git_revwalk_reset #(self)) options: #()