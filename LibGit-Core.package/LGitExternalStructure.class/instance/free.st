initialize-release
free
	(handle isExternalAddress and: [
		handle isNull ]) ifTrue: [ ^ self ].
	
		self class finalizeResourceData: handle.
		self assert: handle isNull