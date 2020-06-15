ffi-calls
ffiCallSafely: fnSpec
	^ (self ffiCalloutIn: thisContext sender)
		convention: self ffiCallingConvention;
		options: self ffiLibrary uniqueInstance options;
		function: fnSpec library: self ffiLibrary uniqueInstance