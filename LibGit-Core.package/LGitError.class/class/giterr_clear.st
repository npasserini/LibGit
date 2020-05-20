libgit-calls
giterr_clear
	^ self ffiCallSafely: #(void giterr_clear()) options: #(  )