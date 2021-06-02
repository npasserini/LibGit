accessing
parents

	| parentCount |
	parentCount := self numberOfParents.
	^ Array
		new: parentCount
		streamContents: [ :stream | 
			1 to: parentCount do: [ :i | 
				stream nextPut: (self parentAt: i) ] ]