tests
testRepoNotBareBeforeInitialization
	| repo |
	repo := self newRepo state1ExistingReference.
	self
		should: [ repo isBare ]
		raise: LGitObjectNotInitialized