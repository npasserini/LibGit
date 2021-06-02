libgit - calls
merge_result: out commit: anotherCommit options: options
	^ self ffiCallSafely: #(
		LGitReturnCodeEnum git_merge_commits(
			LGitIndex *out, 
			LGitRepository repository, 
			LGitCommit self, 
			LGitCommit anotherCommit, 
			LGitMergeOptions *options))
		options: #()