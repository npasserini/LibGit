initialize-release
free
	(handle isExternalAddress and: [ handle isNull not ])
		ifTrue: [ 
			self class finalizeResourceData: handle.
			self assert: handle isNull ]