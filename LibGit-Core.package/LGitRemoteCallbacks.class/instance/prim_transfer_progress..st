libgit-fields
prim_transfer_progress: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_TRANSFER_PROGRESS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])