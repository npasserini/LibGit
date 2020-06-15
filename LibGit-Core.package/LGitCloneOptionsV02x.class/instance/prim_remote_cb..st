libgit-fields
prim_remote_cb: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_REMOTE_CB
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])