libgit-calls
branch_is_head: branch
	
	^ self ffiCallSafely: #(int git_branch_is_head #(self)) options: #()