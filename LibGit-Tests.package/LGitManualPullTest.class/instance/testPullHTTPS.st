tests
testPullHTTPS
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo remote packDirectory credentials credentialsCallback options |
	repo := self newRepo state4WithCommit.
	remote := LGitRemote of: repo named: 'origin' url: self newRepo repositoryUrlHttps.
	remote create.

	credentials := remote class credentialsPlaintext.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	options := (repo ffiLibrary fetchOptionsStructureClass defaults
		callbacks: (self ffiLibrary remoteCallbacksStructureClass defaults
			credentials: credentialsCallback;
			yourself);
		yourself).
	self shouldnt: [ remote pullWithFetchOptions: options ] raise: LGitAbstractError.
	packDirectory := repo workingDirectory / '.git/objects/pack'.
	self assert: packDirectory exists.
	self deny: packDirectory children isEmpty.
	self assert: packDirectory children size equals: 2.
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.pack' ]).
	self assert: (packDirectory children contains: [ :child | child basename endsWith: '.idx' ]).
	self assert: (repo workingDirectory / '.git/FETCH_HEAD') exists