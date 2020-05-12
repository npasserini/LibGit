accessing
connectPushWithCredentials: aCredentialsProvider
	self withReturnHandlerDo: [ 
		self 
			remote_connect: self 
			direction: LGitDirectionEnum git_direction_push
			callbacks: (self ffiLibrary remoteCallbacksStructureClass withProvider: aCredentialsProvider) ]