class initialization
removeOldAccessors

	declaration ifNil: [ ^ self ].
	
	declaration keysDo: [ :selector |
		self class removeSelector: selector ]