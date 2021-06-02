accessing - platform
win32ModuleName

	| pluginDir |
	pluginDir := Smalltalk vm binary parent.
	"We look first for version 1.0.0. If not found, we look for version 0.2x"
	#('libgit2-1-0-0.dll' 'libgit2.dll')
		detect: [ :each | (pluginDir / each) exists ] 
		ifFound: [ :libName | ^ (pluginDir / libName) fullName ].
	
	self error: 'Libgit library not found in ', pluginDir pathString