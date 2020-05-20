ffi-calls
ffiCallSafely: fnSpec
	<ffiCalloutTranslator>
	^ (LGitSafeFFICalloutAPI inContext: thisContext sender)
		convention: self ffiCallingConvention;
		options: self ffiLibrary uniqueInstance options;
		function: fnSpec module: self ffiLibrary uniqueInstance