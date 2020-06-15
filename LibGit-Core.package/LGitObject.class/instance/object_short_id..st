libgit-calls
object_short_id: out
	
	^ self
		ffiCallSafely: #(LGitObjectTypeEnum git_object_short_id(LGitBuf *out, self))
		options: #()