testing
ifNotReady: aBlock
	"Use extra block so compiler can optimize"

	self isReady ifFalse: [ aBlock value ]