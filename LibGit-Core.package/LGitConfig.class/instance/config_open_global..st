libgit - calls
config_open_global: out

	^ self ffiCallSafely: #(int git_config_open_global("LGitConfig **"void **out, self))