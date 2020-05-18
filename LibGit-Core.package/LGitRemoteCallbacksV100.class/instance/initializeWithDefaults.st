operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			remote_init_callbacks: self getHandle
			version: LGitStructVersionsEnum git_remote_callbacks_version_1 ]