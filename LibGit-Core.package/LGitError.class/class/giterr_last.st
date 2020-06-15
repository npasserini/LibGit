libgit-calls
giterr_last
	^ self ffiCallSafely: #(void *giterr_last()) options: #(  )