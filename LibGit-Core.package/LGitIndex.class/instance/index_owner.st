libgit - calls
index_owner
	^ self ffiCallSafely: #(LGitRepository * git_index_owner (LGitIndex self)) options: #()