libgit - calls
config_find_global_path: out
	^ self ffiCallSafely: #(int git_config_find_global(String* out))