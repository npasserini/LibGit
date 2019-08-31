ffi-calls
ffiCallSafely: fnSpec options: options
	<ffiCalloutTranslator>
	^ (LGitSafeFFICalloutAPI inContext: thisContext sender)
		convention: self ffiCallingConvention;
		options: (self ffiLibrary options), options;
		function: fnSpec module: self ffiLibrary moduleName