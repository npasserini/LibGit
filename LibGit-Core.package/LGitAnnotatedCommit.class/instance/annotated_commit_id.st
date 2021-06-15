libgit - calls
annotated_commit_id

	 ^ self ffiCallSafely: #(LGitId * git_annotated_commit_id #(self)) options: #()