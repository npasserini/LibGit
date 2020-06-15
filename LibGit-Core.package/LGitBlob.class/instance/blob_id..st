libgit-calls
blob_id: blob
	
	^ self ffiCallSafely: #(void * git_blob_id #(self)) options: #()