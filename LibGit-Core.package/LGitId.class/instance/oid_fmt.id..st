libgit-calls
oid_fmt: out id:  objectId
	^self ffiCallSafely: #(void git_oid_fmt(void * out, LGitId * self)) options: #(  )