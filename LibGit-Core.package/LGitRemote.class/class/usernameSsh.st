accessing-credentials
usernameSsh
	^ self credentials
		at: #usernameSsh
		ifAbsentPut: [  | value |
			value := (SystemSettingsPersistence default nodeNamed: #'usernameSsh') storedValue.
			value ifNil: [ 
				UIManager default 
					request: 'What''s your username for SSH (probably "git")?'
					initialAnswer: 'git' ] ]