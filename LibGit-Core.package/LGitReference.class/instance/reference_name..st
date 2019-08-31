libgit-calls
reference_name: ref
	
	^ self ffiCallSafely: #(String git_reference_name #(self)) options: #()