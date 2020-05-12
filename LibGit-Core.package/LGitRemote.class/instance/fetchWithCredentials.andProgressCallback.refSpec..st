operations
fetchWithCredentials: aCredentialsProvider andProgressCallback: progressCallback refSpec: aRefSpec
	| refSpecs callbacks |
	self isReady ifFalse: [ self create ].
	refSpecs := aRefSpec ifNotNil: [LGitStringArray withAll: { aRefSpec asString }].
	self withReturnHandlerDo: [ 
		
		callbacks := self ffiLibrary remoteCallbacksStructureClass withProvider: aCredentialsProvider.
		progressCallback ifNotNil: [callbacks transferProgress: progressCallback].
		
		self
			remote_fetch: self
			refspecs: refSpecs
			opts: (self ffiLibrary fetchOptionsStructureClass defaults
				callbacks: callbacks;
				yourself)
			reflog_message: nil ]