libgit - calls
remote_connect: remote direction: direction callbacks: remoteCallbacks
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_connect #(self , LGitDirectionEnum direction , LGitRemoteCallbacks * remoteCallbacks))
		options: #()