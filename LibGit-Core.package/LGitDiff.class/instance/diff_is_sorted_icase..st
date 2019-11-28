libgit-calls
diff_is_sorted_icase: diff
	
	^ self ffiCallSafely: #(Boolean git_diff_is_sorted_icase #(self)) options: #()