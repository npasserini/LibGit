libgit-fields
prim_repository_cb: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_REPOSITORY_CB
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])