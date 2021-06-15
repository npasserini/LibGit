libgit - calls
cred_userpass_plaintext_new: out username: usernameString password: password 
	^self ffiCallSafely: #(
		LGitReturnCodeEnum git_cred_userpass_plaintext_new(
			LGitCredentials * out, 
			String username, 
			String password)
	) options: #(  )