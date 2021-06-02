libgit - calls
treebuilder_clear: bld
	
	^ self ffiCallSafely: #(void git_treebuilder_clear #(self)) options: #()