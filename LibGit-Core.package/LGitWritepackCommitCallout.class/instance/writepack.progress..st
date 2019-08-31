libgit-calls
writepack: writepack progress: progress
	^ self
		ffiCallSafely: #(int #(LGitOdbWritepack *writepack , LGitTransferProgress *progress))
		options: #(optMayGC)