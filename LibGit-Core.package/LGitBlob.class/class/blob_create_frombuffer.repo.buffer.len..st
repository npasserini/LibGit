libgit-calls
blob_create_frombuffer: objectId repo: repo buffer: buffer len: len
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_blob_create_frombuffer #(LGitId * objectId , LGitRepository repo , void  *buffer , size_t len))
		options: #()