accessing
fetchOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	self ffiLibrary uniqueInstance version first = 0
		ifTrue: [ ^ LGitFetchOptionsV02x ].
	^ LGitFetchOptionsV100