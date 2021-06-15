libgit - calls
diff_num_deltas: diff
	
	^ self ffiCallSafely: #(size_t git_diff_num_deltas #(self)) options: #()