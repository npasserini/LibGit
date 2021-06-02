libgit - calls
object_lookup: object repo: repo id: oid type: type
	
	^ self
		ffiCall:
			#(LGitReturnCodeEnum git_object_lookup #(LGitObject * object , LGitRepository repo , LGitId * oid , LGitObjectTypeEnum type))
		options: #()