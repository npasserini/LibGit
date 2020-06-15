libgit-calls
pathspec_new: out with: pathspec
	^ self 
		ffiCall: #(int git_pathspec_new(LGitPathSpec *self, LGitStringArray *pathspec))
		options: #()