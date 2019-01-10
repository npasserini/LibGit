libgit-calls
revwalk_push_range: range
	^ self
		call: #(LGitReturnCodeEnum git_revwalk_push_range #(self , String range))
		options: #()