libgit - calls
commit_committer: commit
	
	^ self
		ffiCallSafely: #(LGitSignature * git_commit_committer #(self))
		options: #()