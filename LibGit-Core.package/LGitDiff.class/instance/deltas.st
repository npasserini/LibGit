operations
deltas
	^ Array
		new: self numberOfDeltas
		streamContents: [ :stream |
			self deltasDo: [ :delta | stream nextPut: delta ] ]