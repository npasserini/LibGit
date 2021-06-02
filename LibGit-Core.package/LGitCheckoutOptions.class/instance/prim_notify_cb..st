libgit - fields
prim_notify_cb: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_NOTIFY_CB
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])