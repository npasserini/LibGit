libgit-fields
prim_update_tips: anObject
	"This method was automatically generated"
	handle 
		pointerAt: OFFSET_PRIM_UPDATE_TIPS
		put: (anObject 
			ifNotNil: [ anObject thunk asExternalAddress ]
			ifNil: [ ExternalAddress null ])