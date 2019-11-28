libgit-calls
object_dup: dest from: source
	
	^ self
		ffiCall: #(LGitObjectTypeEnum git_object_dup(LGitObject *dest, LGitObject source))
		options: #()