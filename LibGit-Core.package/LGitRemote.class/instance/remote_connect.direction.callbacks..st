libgit - calls
remote_connect: remote direction: direction callbacks: remoteCallbacks
	
	^ self ffiLibrary uniqueInstance version first = 0
		ifTrue: [
			self shouldBeImplemented.
			self remote_connect_v0251: remote direction: direction callbacks: remoteCallbacks ]
		ifFalse: [ 
			self remote_connect_v100: remote direction: direction callbacks: remoteCallbacks ]
