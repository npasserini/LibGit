libgit-calls
reference_target: ref
	<todo: 'using LGitId* as return value causes random crashes'>
	
	^ self ffiCallSafely: #(void * git_reference_target #(self)) options: #()