libgit-calls
oid_pathfmt: out id: id 
	^ self ffiCallSafely: #(void git_oid_pathfmt(void *out, LGitId * self)) options: #(  )