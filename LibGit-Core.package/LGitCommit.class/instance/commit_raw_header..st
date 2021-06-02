libgit - calls
commit_raw_header: aCommit
	^ self ffiCallSafely: #(const char * git_commit_raw_header(self))