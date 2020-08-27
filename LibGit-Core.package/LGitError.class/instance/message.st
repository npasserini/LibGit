accessing
message
	^ self isNull
		ifFalse: [ self prim_message readStringUTF8 ]
		ifTrue: [ 'no error message set by libgit2' ]