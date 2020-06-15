instance creation
withCredentialsProvider: provider
	| fetchOptions |
	fetchOptions := self ffiLibrary uniqueInstance fetchOptionsStructureClass defaults
		callbacks: (self ffiLibrary uniqueInstance remoteCallbacksStructureClass withProvider: provider);
		yourself.

	^ self defaults
		fetchOptions: fetchOptions
		yourself.
	
