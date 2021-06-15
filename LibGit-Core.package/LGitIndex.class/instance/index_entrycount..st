libgit - calls
index_entrycount: index
	
	^ self ffiCallSafely: #(size_t git_index_entrycount #(self)) options: #()