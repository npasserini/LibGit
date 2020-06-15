running
tearDown
	| remote repo credentials credentialsCallback |
	super tearDown.
	repo := self newRepo state3Opened.
	remote := LGitRemote
		of: repo
		named: 'origin'
		url: self newRepo repositoryUrlSsh
		fetchSpec: '+refs/heads/*:refs/remotes/origin/*'.
	remote create.
	
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	remote
		pushWithRefSpec: (LGitRefSpec fromString: ':refs/heads/libgit')
		pushOptions: (repo ffiLibrary uniqueInstance pushOptionsStructureClass defaults
			callbacks: (repo ffiLibrary uniqueInstance remoteCallbacksStructureClass defaults
				credentials: credentialsCallback;
				yourself);
			yourself).
	super tearDown