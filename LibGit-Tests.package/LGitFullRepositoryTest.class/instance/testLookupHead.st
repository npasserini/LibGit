tests
testLookupHead
	| repo ref |
	repo := self newRepo state4WithCommit.
	ref := repo lookup: 'HEAD'.
	
	self assert: ref class equals: LGitReference.
	self assert: ref name equals: 'HEAD'.
	self assert: ref resolve isHead.
	self deny: ref object hasParents