accessing - platform
unixModuleName

	| pluginDir |
	pluginDir := Smalltalk vm binary parent.
	#('libgit2.so.1.0.0' 'libgit2.so.0.25.1')
		detect: [ :each | (pluginDir / each) exists ] 
		ifFound: [ :libName | ^ (pluginDir / libName) fullName ].

	self error: 'Module not found.'