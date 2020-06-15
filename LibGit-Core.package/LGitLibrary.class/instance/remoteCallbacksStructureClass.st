accessing
remoteCallbacksStructureClass

	"Find the correct class depending on the libgit version we are using"
	self ffiLibrary uniqueInstance version first = 0
		ifTrue: [ ^ LGitRemoteCallbacksV02x ].
	^ LGitRemoteCallbacksV100