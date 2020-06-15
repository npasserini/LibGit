accessing platform
macModuleName
	| pluginDir |
	pluginDir := Smalltalk vm binary parent / 'Plugins'.
	"We look first for version 1.0.0. If not found, we look for version 0.2x"
	#('libgit2.1.0.0.dylib' 'libgit2.0.25.1.dylib')
		detect: [ :each | (pluginDir / each) exists ] 
		ifFound: [ :libName | ^ (pluginDir / libName) fullName ].

	self error: 'Module not found.'