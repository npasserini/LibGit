instance creation
withCredentialsProvider: provider
	| fetchOptions |
	fetchOptions := self ffiLibrary fetchOptionsStructureClass defaults
		callbacks: (self ffiLibrary remoteCallbacksStructureClass withProvider: provider);
		yourself.

	^ self defaults
		fetchOptions: fetchOptions
		yourself.
	
