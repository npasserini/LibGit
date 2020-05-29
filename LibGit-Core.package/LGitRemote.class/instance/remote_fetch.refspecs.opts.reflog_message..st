libgit-calls
remote_fetch: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	self ffiLibrary uniqueInstance version first = 0
		ifTrue: [
			^ self
				remote_fetch_v0251: remote
				refspecs: refspecs
				opts: opts
				reflog_message: reflog_message. ].
	^ self remote_fetch_v100: remote refspecs: refspecs opts: opts reflog_message: reflog_message.