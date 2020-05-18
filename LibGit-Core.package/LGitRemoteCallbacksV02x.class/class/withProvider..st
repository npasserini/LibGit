instance creation
withProvider: provider

	^ self defaults
		credentials: (self newCredentialsCallbackFor: provider);
		certificateCheck: self newCertificateCheckCallback;
		yourself