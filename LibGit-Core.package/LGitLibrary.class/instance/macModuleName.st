accessing platform
macModuleName
	| pluginDir |
	pluginDir := Smalltalk vm binary parent / 'Plugins'.
	#('libgit2.1.0.dylib')
		detect: [ :each | (pluginDir / each) exists ] 
		ifFound: [ :libName | ^ (pluginDir / libName) fullName  ].

	self error: 'Module not found.'