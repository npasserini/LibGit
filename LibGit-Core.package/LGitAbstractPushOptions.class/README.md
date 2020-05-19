https://libgit2.org/libgit2/#v1.0.0/type/git_push_options

git_push_options
Controls the behavior of a git_push object.

unsigned int	version

unsigned int	pb_parallelism
If the transport being used to push to the remote requires the creation of a pack file, this controls the number of worker threads used by the packbuilder when creating that pack file to be sent to the remote. If set to 0, the packbuilder will auto-detect the number of threads to create. The default value is 1.

git_remote_callbacks	callbacks
Callbacks to use for this push operation

git_proxy_options	proxy_opts
Proxy options to use, by default no proxy is used.

git_strarray	custom_headers
Extra headers for this push operation

Defined in: git2/remote.h