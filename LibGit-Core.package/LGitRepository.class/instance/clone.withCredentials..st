operations
clone: aString withCredentials: aCredentialsProvider 
	| cloneOptions |
	cloneOptions := self cloneOptionsStructureClass withCredentialsProvider: aCredentialsProvider.
	self
		clone: aString
		options: cloneOptions	
