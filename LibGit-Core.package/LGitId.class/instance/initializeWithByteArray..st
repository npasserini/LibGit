initialization
initializeWithByteArray: aByteArray

	| externalArray |
	externalArray := Byte20 externalNew.
	handle := externalArray getHandle.
	externalArray
		replaceFrom: 1
		to: externalArray size
		with: aByteArray.
	self prim_id: externalArray