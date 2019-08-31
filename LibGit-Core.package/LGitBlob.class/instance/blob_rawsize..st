libgit-calls
blob_rawsize: blob
	
	^ self ffiCallSafely: #(int64 git_blob_rawsize #(self)) options: #()