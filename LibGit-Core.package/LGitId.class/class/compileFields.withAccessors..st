accessing
compileFields: specArray withAccessors: aSymbol
	Byte20 := FFITypeArray
		ofType: 'uint8'
		size: 20.
		
	super
		compileFields: specArray
		withAccessors: aSymbol