libgit-fields
prim_completion: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_COMPLETION
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])