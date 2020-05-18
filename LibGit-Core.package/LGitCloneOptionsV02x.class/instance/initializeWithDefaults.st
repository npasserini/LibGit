operations
initializeWithDefaults
	self withReturnHandlerDo: [
		self
			clone_init_options: self getHandle
			version: LGitOptionsVersionsEnum  git_clone_options_version_1 ].
	self prim_fetch_opts prim_proxy_opts prim_type: LGitProxyTypeEnum git_proxy_auto