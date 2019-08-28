operations
deltasDo: aBlock
	^ 1 to: self numberOfDeltas do: [ :index | aBlock value: (self deltaAt: index) ]