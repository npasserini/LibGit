accessing
fieldsDesc
	
	^ super fieldsDesc, #(
		"
		 * Resolve URL before connecting to remote. The returned URL will be used to connect to the remote instead.
		"		
		LGitURLResolveCallback resolve_url
	)