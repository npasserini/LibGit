accessing
connectFetchWithCredentials: aCredentialsProvider
	self withReturnHandlerDo: [ 
		self 
			remote_connect: self 
			direction: LGitDirectionEnum git_direction_fetch
			callbacks: (self ffiLibrary uniqueInstance remoteCallbacksStructureClass withProvider: aCredentialsProvider) ]