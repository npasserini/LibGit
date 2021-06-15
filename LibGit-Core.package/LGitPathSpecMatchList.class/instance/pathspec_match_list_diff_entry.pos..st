libgit - calls
pathspec_match_list_diff_entry: m pos: pos
	
	^ self
		ffiCallSafely:
			#(LGitDiffDelta git_pathspec_match_list_diff_entry #(LGitPathSpecMatchList m , size_t pos))
		options: #()