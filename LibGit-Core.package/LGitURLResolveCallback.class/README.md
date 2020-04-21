git_url_resolve_cb
Callback to resolve URLs before connecting to remote

git_buf *	 url_resolved The buffer to write the resolved URL to

const char *	url The URL to resolve

int direction	GIT_DIRECTION_FETCH or GIT_DIRECTION_PUSH

void *	payload	Payload provided by the caller

returns

int 0 on success, GIT_PASSTHROUGH or an error
If you return GIT_PASSTHROUGH, you don't need to write anything to url_resolved.

signature
int git_url_resolve_cb(git_buf *url_resolved, const char *url, int direction, void *payload);

Defined in: git2/remote.h