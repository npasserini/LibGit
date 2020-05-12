accessing
cloneOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	self ffiLibrary uniqueInstance version first = 0
		ifTrue: [ ^ LGitCloneOptionsV02x ].
	^ LGitCloneOptionsV100