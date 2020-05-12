operations
fetch
	self isReady ifFalse: [ self create ].

	self withReturnHandlerDo: [ 
		self
			remote_fetch: self
			refspecs: self ffiNull handle
			opts: (self ffiLibrary fetchOptionsStructureClass defaults
				callbacks: self ffiLibrary remoteCallbacksStructureClass defaults;
				yourself)
			reflog_message: nil ]