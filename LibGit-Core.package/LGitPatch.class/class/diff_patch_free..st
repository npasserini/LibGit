libgit-calls
diff_patch_free: handle
	
	^ self ffiCallSafely: #(void git_patch_free #(void *handle)) options: #()