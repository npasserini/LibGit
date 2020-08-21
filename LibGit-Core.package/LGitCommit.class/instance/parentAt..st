accessing
parentAt: index
	"Answer the parent at number index (1-based)."

	| parentOid |
	parentOid := LGitId
		fromHandle: (self commit_parent_id: self n: (index - 1)) getHandle.
	^ self class of: self repository fromId: parentOid