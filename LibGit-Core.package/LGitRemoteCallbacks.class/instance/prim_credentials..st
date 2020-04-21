libgit-fields
prim_credentials: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_CREDENTIALS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])