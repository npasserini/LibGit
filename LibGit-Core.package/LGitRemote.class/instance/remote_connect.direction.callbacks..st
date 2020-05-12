libgit-calls
remote_connect: remote direction: direction callbacks: remoteCallbacks
	
	^ self
		call:
			#(LGitReturnCodeEnum git_remote_connect #(self , LGitDirectionEnum direction , void * remoteCallbacks))
		options: #()