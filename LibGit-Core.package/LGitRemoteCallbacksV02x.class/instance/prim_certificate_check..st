libgit-fields
prim_certificate_check: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_CERTIFICATE_CHECK
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])