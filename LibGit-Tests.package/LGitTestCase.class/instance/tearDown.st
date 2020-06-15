running
tearDown
	super tearDown.
	repository ifNotNil: [ repository free ]