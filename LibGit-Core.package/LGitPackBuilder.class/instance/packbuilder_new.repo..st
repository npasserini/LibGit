libgit-calls
packbuilder_new: out repo: repo
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_packbuilder_new #(LGitPackBuilder * self , LGitRepository repo))
		options: #()