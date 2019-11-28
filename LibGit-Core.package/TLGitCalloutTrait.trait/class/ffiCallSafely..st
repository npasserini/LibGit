ffi-calls
ffiCallSafely: fnSpec
	^ (self ffiCalloutIn: thisContext sender)
		convention: self ffiCallingConvention;
		options: self ffiLibrary uniqueInstance options;
		function: fnSpec module: self ffiLibrary uniqueInstance