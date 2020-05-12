libgit-fields
prim_resolve_url: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_RESOLVE_URL
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])