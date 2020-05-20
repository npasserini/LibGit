libgit-calls
object_free: handle 
	^self ffiCallSafely: #(void git_object_free(void *handle)) options: #(  )