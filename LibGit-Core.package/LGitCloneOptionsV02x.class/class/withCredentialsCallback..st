instance creation
withCredentialsCallback: aBlock
	| credentialsCallback callbacks fetchOptions  |
	credentialsCallback := LGitCredAcquireCallback on: aBlock.

	callbacks := self ffiLibrary remoteCallbacksStructureClass defaults
		credentials: credentialsCallback;
		yourself.

	fetchOptions := self ffiLibrary fetchOptionsStructureClass defaults
		callbacks: callbacks;
		yourself.

	^ self defaults
		fetchOptions: fetchOptions;
		yourself.
	
