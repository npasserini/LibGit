libgit-fields
prim_push_negotiation: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_PUSH_NEGOTIATION
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])