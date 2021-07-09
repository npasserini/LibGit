accessing
defaultBranchName
	"Answer the name of the remote's default branch.
	
	Must only be called after connecting.
	"

	| buf defaultBranchName |
	buf := LGitBuf new.
	[	self withReturnHandlerDo: [
			self remote_default_branch: buf ].
		defaultBranchName := buf prim_ptr readStringUTF8.
	] ensure: [ buf free ].

	^ defaultBranchName