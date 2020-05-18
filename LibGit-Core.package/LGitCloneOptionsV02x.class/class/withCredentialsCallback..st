instance creation
withCredentialsCallback: aBlock
	| credentialsCallback callbacks fetchOptions  |
	credentialsCallback := LGitCredAcquireCallback on: aBlock.

	callbacks := self ffiLibrary uniqueInstance remoteCallbacksStructureClass defaults
		credentials: credentialsCallback;
		yourself.

	fetchOptions := self ffiLibrary uniqueInstance fetchOptionsStructureClass defaults
		callbacks: callbacks;
		yourself.

	^ self defaults
		fetchOptions: fetchOptions;
		yourself.
	
