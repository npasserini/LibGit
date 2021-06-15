libgit - calls
diff_find_similar: diff diff_find_options: options
	
	^ self ffiCallSafely: #(LGitReturnCodeEnum git_diff_find_similar #(self, LGitDiffFindOptions *options)) options: #()