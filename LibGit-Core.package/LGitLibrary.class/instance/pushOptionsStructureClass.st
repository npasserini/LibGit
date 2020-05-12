accessing
pushOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	self ffiLibrary uniqueInstance version first = 0
		ifTrue: [ ^ LGitPushOptionsV02x ].
	^ LGitPushOptionsV100