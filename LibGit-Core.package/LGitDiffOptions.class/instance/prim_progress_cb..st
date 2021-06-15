libgit - fields
prim_progress_cb: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PROGRESS_CB
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])