libgit - calls
config_set_bool: name to: value
	^ self ffiCallSafely:
			#(LGitReturnCodeEnum git_config_set_bool(
				self, 
				String name, 
				Boolean value))
		options: #()