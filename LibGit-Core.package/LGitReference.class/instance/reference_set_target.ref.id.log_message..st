libgit - calls
reference_set_target: out ref: ref id: id log_message: log_message
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_reference_set_target #(LGitReference * out , self , LGitId * id , String log_message))
		options: #()