operations
fetchWithMessage: aString credentials: aCredentialsProvider 
	self create.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			opts: (self ffiLibrary uniqueInstance fetchOptionsStructureClass defaults
				callbacks: (self ffiLibrary uniqueInstance remoteCallbacksStructureClass withProvider: aCredentialsProvider);
				yourself)
			reflog_message: aString ]