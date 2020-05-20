ffi-calls
ffiCallSafely: fnSpec options: options
	^ (self ffiCalloutIn: thisContext sender)
		convention: self ffiCallingConvention;
		options: (self ffiLibrary options), options;
		function: fnSpec library: self ffiLibrary libraryName