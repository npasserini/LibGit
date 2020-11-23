ffi-calls
ffiCallSafely: fnSpec options: options
	<ffiCalloutTranslator>

	^ self ffiCall: fnSpec options: options