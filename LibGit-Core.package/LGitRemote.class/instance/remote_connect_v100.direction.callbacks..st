libgit-calls
remote_connect_v100: remote direction: direction callbacks: remoteCallbacks

	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_connect #(self , LGitDirectionEnum direction , LGitRemoteCallbacksV100 * remoteCallbacks))
		options: #()
	
	
