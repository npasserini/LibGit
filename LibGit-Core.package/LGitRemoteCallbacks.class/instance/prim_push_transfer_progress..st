libgit-fields
prim_push_transfer_progress: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PUSH_TRANSFER_PROGRESS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])