printing
hexString
	"Answer a hex string representation of the receiver"
	| buffer |

	self isExternal
		ifFalse: [ ^ handle hex ].
	buffer := ByteArray new: 40.
	buffer pin.
	self oid_fmt: buffer size: 40 id: self.
	buffer unpin.
	^ buffer asString