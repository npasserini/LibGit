tests
testParents
	| commitA commitB |
	repository := self newRepo state4WithCommit.
	file := self repository repositoryReference / 'libgit_tests' / 'foo'.
	commitA := repository head object.
	self touchFileAndCommit.
	commitB := repository head object.

	self assert: commitB numberOfParents equals: 1.
	self assert: (commitB parentAt: 1) id equals: commitA id.
	self assert: commitB parents size equals: 1.
	self assert: commitB parents first id equals: commitA id.
