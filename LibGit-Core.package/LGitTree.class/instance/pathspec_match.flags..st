libgit-calls
pathspec_match: ps flags: flags
	^ self ffiCallSafely: #(int git_pathspec_match_tree(0, self, LGitPathSpecFlagTypeEnum flags, LGitPathSpec ps))