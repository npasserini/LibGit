libgit-calls
writepack: writepack
	^ self ffiCallSafely: #(void #(LGitOdbWritepack *writepack)) options: #()