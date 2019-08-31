libgit-calls
tag_name
	^ self ffiCallSafely: #(String git_tag_name #(self)) options: #()