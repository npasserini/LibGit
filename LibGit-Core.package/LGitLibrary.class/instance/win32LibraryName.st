accessing - platform
win32LibraryName

	^ FFIWindowsLibraryFinder findAnyLibrary: #('libgit2-1-0-0.dll' 'libgit2.dll')
