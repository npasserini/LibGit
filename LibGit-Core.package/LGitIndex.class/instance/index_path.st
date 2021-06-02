libgit - calls
index_path
	^ self
		ffiCallSafely: #(String git_index_path #(self))
		options: #()