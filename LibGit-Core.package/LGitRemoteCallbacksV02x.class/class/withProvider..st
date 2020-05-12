instance creation
withProvider: provider

	^ self class defaults
		credentials: (self newCredentialsCallbackFor: provider);
		certificateCheck: self newCertificateCheckCallback;
		yourself