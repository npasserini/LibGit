libgit - calls
object_type: obj
	
	^ self
		ffiCallSafely: #(LGitObjectTypeEnum git_object_type #(self))
		options: #()