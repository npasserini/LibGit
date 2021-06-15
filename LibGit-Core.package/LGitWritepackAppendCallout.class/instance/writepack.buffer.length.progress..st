libgit - calls
writepack: writepack buffer: buffer length: length progress: progress
	
	^ self
		ffiCallSafely:
			#(int #(LGitOdbWritepack * writepack , void * buffer , int length , LGitTransferProgress * progress))
		options: #(optMayGC)