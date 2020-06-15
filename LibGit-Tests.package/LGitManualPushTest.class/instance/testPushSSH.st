tests
testPushSSH
	<todo: 'use a local repository once libgit2 supports cloning from fs'>
	| repo directory head blob author builder treeId rootBuilder tree remote credentials credentialsCallback |
	repo := self newRepo clonedSSH.
	directory := (repo workingDirectory / 'libgit_tests') ensureCreateDirectory.
	directory / 'foo' writeStreamDo: [ :stream | stream nextPutAll: 'eat my shorts' ].
	head := repo head object.
	blob := LGitBlob of: repo fromFile: directory / 'foo'.
	builder := LGitTreeBuilder of: repo.
	builder createNew.
	builder addEntry: blob filename: 'foo'.
	treeId := builder write.
	rootBuilder := LGitTreeBuilder of: repo.
	rootBuilder createNew.
	rootBuilder addEntryWithId: treeId filename: 'libgit_tests' filemode: LGitFilemodeEnum git_filemode_tree.
	tree := rootBuilder newTree.
	author := LGitSignature name: 'Bart Simpson' email: 'bartman@gotham.com'.
	(LGitCommitBuilder of: repo)
		tree: tree;
		message: 'push test';
		parents: {head};
		updateReference: repo master;
		author: author;
		committer: author;
		writeCommit.
	remote := (LGitRemote of: repo named: 'origin') lookup.
	credentials := remote class credentialsSsh.
	credentialsCallback := LGitCredAcquireCallback
		on: [ :cred :url :username_from_url :allowed_types :data | 
			credentials createWith: cred.
			0 ].
	self
		shouldnt: [
			remote
				pushWithRefSpec: (LGitRefSpec fromString: 'refs/heads/master:refs/heads/libgit')
				pushOptions: (repo ffiLibrary uniqueInstance pushOptionsStructureClass defaults
					callbacks: (repo ffiLibrary uniqueInstance remoteCallbacksStructureClass defaults
						credentials: credentialsCallback;
						yourself);
					yourself). ]
		raise: LGitAbstractError