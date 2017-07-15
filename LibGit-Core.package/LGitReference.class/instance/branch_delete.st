libgit-calls
branch_delete
	^ self call: #(int git_branch_delete #(self)) options: #()