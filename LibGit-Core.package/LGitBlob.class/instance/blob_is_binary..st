libgit - calls
blob_is_binary: blob
	
	^ self ffiCallSafely: #(Boolean git_blob_is_binary #(self)) options: #()