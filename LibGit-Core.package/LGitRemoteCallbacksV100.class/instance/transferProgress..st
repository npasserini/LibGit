accessing
transferProgress: aCallback
	transferProgressCallback := aCallback.
	self prim_transfer_progress: aCallback