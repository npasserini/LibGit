libgit-calls
config_get_bool: name to: out
	^ self ffiCallSafely:
			#(LGitReturnCodeEnum git_config_get_bool(
				int *out,
				self, 
				String name))
		options: #()