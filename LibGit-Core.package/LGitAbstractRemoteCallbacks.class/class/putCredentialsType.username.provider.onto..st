private
putCredentialsType: types username: username provider: provider onto: output  

	(types anyMask: 1 << 1) ifTrue: [ 
		^ provider sshCredentialsClass 
			createFrom: provider 
			username: username
			onto: output ].

	(types anyMask: 1 << 0) ifTrue: [ 
		^ LGitCredentialsPlaintext createFrom: provider onto: output ].

	^ -1