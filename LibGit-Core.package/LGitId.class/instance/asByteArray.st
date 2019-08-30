converting
asByteArray
	| array id |
	array := ByteArray new: 20.
	id := self prim_id.
	1
		to: id size
		do: [ :index |
			array
				at: index
				put: (id at: index) asInteger ].
			
	^ array