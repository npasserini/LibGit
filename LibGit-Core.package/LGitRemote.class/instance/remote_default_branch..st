libgit-calls
remote_default_branch: out
	"Retrieve the name of the remote's default branch.
	
	The default branch of a repository is the branch which HEAD points to. If the remote does not support reporting this information directly, it performs the guess as git does; that is, if there are multiple branches which point to the same commit, the first one is chosen. If the master branch is a candidate, it wins.
	
	This function must only be called after connecting.
	
	See: https://libgit2.org/libgit2/#v1.0.0/group/remote/git_remote_default_branch"

	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_remote_default_branch(LGitBuf *out, self))
		options: #()