libgit - fields
prim_fetch_opts
	"This method was automatically generated"
	^ LGitFetchOptionsV02x fromHandle: (handle referenceStructAt: OFFSET_PRIM_FETCH_OPTS length: LGitFetchOptionsV02x byteSize)