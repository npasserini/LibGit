libgit - calls
repository_workdir: repo
	
	^ self ffiCallSafely: #(String git_repository_workdir #(self)) options: #()