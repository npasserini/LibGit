testing
isDescendantOf: aCommit

	^ (self repo: self repository graph: self id descendant_of: aCommit id) == 1