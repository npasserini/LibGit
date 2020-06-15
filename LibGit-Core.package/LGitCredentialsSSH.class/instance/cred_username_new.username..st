libgit-calls
cred_username_new: out username: usernameString
	^ self 
		ffiCallSafely: #(int git_cred_username_new (LGitCredentials * out, String usernameString)) 
		options: #()
			