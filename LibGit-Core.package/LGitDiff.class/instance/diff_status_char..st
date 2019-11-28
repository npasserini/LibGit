libgit-calls
diff_status_char: status
	
	^ self
		ffiCallSafely: #(Character git_diff_status_char #(LGitDeltaTypeEnum status))
		options: #()