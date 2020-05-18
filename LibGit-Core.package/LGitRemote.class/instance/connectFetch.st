accessing
connectFetch
	self withReturnHandlerDo: [ 
		self 
			remote_connect: self 
			direction: LGitDirectionEnum git_direction_fetch
			callbacks: self ffiLibrary uniqueInstance remoteCallbacksStructureClass defaults ]