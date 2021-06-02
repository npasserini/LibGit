libgit - calls
repo: repo graph: commit descendant_of: ancestor
	^ self 
		ffiCallSafely: #(int git_graph_descendant_of(LGitRepository repo, LGitId *commit, LGitId *ancestor))
		options: #() 