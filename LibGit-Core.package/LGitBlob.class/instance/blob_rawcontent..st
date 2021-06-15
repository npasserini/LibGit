libgit - calls
blob_rawcontent: blob
	
	^ self ffiCallSafely: #(void * git_blob_rawcontent #(self)) options: #()