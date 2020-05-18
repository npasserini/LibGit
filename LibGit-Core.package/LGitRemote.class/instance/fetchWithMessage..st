operations
fetchWithMessage: aString
	self create.
		
	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: nil
			opts: self ffiLibrary uniqueInstance fetchOptionsStructureClass defaults
			reflog_message: aString ]