operations
fetchWithMessage: aString credentials: aCredentialsProvider 
	self create.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			opts: (self ffiLibrary fetchOptionsStructureClass defaults
				callbacks: (self ffiLibrary remoteCallbacksStructureClass withProvider: aCredentialsProvider);
				yourself)
			reflog_message: aString ]