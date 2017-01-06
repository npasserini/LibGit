accessing-credentials
keyFilePublicPath
	^ self credentials
		at: #keyFilePublicPath
		ifAbsentPut: [  | value |
			value := (SystemSettingsPersistence default nodeNamed: #'keyFilePublicPath') storedValue.
			value ifNil: [ 
				UIManager default request: 'Path to your public key file (/home/foo/.ssh/key.pub)?' ] ]