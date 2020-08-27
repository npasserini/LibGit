accessing
getString: name ifPresent: presentBlock ifAbsent: absentBlock
	| buf |
	buf := LGitBuf new.
	^ [
		self config_get_string: name output: buf.
		buf prim_ptr readStringUTF8
			ifNotEmpty: presentBlock
			ifEmpty: absentBlock
	]
	ensure: [ buf free ]

