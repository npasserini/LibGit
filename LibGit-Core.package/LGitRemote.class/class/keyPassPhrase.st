accessing-credentials
keyPassPhrase
	^ self credentials
		at: #keyPassPhrase
		ifAbsentPut: [  | value |
			value := (SystemSettingsPersistence default nodeNamed: #'keyPassPhrase') storedValue.
			value ifNil: [ 
				UIManager default request: 'Passphrase of your private key file?' ] ]