accessing
owner
	^ self ffiCallSafely: #(void * git_reference_owner #(self)) options: #()