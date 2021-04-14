accessing platform
macLibraryName

	^ FFIMacLibraryFinder findAnyLibrary: #('libgit2.1.0.1.dylib' 'libgit2.1.0.0.dylib' 'libgit2.0.25.1.dylib')
