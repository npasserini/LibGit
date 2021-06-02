libgit - calls
strarray_free: handle
	"libgit2 will also free all the strings in this struct"
	^ self
		ffiCallSafely: #(void git_strarray_free(void *handle))
		options: #()