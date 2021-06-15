libgit - calls
cred_ssh_key_new: out username: aName
	^ self ffiCallSafely: #(int git_cred_ssh_key_from_agent(LGitCredentials *out, String aName))
