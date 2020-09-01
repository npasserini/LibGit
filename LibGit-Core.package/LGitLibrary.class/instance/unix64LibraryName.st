accessing platform
unix64LibraryName

	^ FFIUnix64LibraryFinder findAnyLibrary: #(
		'libgit2.so.1.0.0' 
		'libgit2.so.1.0' 
		'libgit2.so.0.25.1')