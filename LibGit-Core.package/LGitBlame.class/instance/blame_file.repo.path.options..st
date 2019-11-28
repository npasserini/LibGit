libgit-calls
blame_file: out repo: repo path: path options: options
	
	^ self
		ffiCall:
			#(int git_blame_file #(LGitBlame * self , LGitRepository repo , String path , LGitBlameOptions * options))
		options: #()