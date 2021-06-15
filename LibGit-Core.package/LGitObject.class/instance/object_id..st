libgit - calls
object_id: obj
	
	^ self
		ffiCallSafely: #(void * git_object_id #(self))
		options: #()