libgit - calls
config_delete_entry: name

	^ self ffiCallSafely:
			#(LGitReturnCodeEnum git_config_delete_entry(
				self, 
				String name))
		options: #()