libgit-calls
oid_fmt: aByteArray size: anInteger id: objectId
	"Format a git_oid into a partial hex string"

	^self ffiCall: #(void git_oid_nfmt(void *aByteArray, int anInteger, LGitId * self))