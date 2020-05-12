accessing
pushTransferProgress: aCallback
	pushTransferProgress := aCallback.
	self prim_push_transfer_progress: aCallback