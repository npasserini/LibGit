libgit-calls
commit_parent_id: commit n: n
	<todo: 'using LGitId * as return type causes a crash'>
	
	^ self
		ffiCallSafely: #(void *git_commit_parent_id #(self , uint n))
		options: #()