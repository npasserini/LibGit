accessing-credentials
keyFilePrivatePath
	^ self credentials
		at: #keyFilePrivatePath
		ifAbsentPut: [ | value |
			value := (SystemSettingsPersistence default nodeNamed: #'keyFilePrivatePath') storedValue.
			value ifNil: [ 
				UIManager default request: 'Path to your private key file (/home/foo/.ssh/key)?' ] ]