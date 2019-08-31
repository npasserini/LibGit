libgit-calls
commit_author: commit
	
	^ self
		ffiCallSafely: #(LGitSignature * git_commit_author #(self))
		options: #()