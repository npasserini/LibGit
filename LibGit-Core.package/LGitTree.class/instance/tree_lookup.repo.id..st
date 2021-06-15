libgit - calls
tree_lookup: out repo: repo id: objectId
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_tree_lookup #(LGitTree * out , LGitRepository repo , LGitId * objectId))
		options: #()