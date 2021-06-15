libgit - fields
prim_fetch_opts
	"This method was automatically generated"
	^ LGitFetchOptionsV100 fromHandle: (handle referenceStructAt: OFFSET_PRIM_FETCH_OPTS length: LGitFetchOptionsV100 byteSize)