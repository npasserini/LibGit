libgit-fields
prim_pack_progress: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PACK_PROGRESS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])