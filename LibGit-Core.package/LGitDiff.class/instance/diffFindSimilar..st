operations
diffFindSimilar: options
	^ self withReturnHandlerDo: [
		self
			diff_find_similar: self
			diff_find_options: options ]