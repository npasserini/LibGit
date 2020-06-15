operations
clone: aString
	| cloneOptions |
	cloneOptions := self cloneOptionsStructureClass defaults.
	self
		clone: aString
		options: cloneOptions	
