Version of git_remote_callbacks structure for libgit 0.2x

git_remote_callbacks
The callback settings structure

Set the callbacks to be called by the remote when informing the user about the progress of the network operations.

unsigned int	version
The version

git_transport_message_cb	sideband_progress
Textual progress from the remote. Text send over the progress side-band will be passed to this function (this is the 'counting objects' output).

int (*)(git_remote_completion_t, void *)	completion

git_credential_acquire_cb	credentials
This will be called if the remote host requires authentication in order to connect to it. Returning GIT_PASSTHROUGH will make libgit2 behave as though this field isn't set.

git_transport_certificate_check_cb	certificate_check
If cert verification fails, this will be called to let the user make the final decision of whether to allow the connection to proceed. Returns 0 to allow the connection or a negative value to indicate an error.

git_indexer_progress_cb	transfer_progress
During the download of new data, this will be regularly called with the current count of progress done by the indexer.

int (*)(const char *, const git_oid *, const git_oid *, void *)	update_tips

git_packbuilder_progress	pack_progress
Function to call with progress information during pack building. Be aware that this is called inline with pack building operations, so performance may be affected.

git_push_transfer_progress_cb	push_transfer_progress
Function to call with progress information during the upload portion of a push. Be aware that this is called inline with pack building operations, so performance may be affected.

git_push_update_reference_cb	push_update_reference
See documentation of git_push_update_reference_cb

git_push_negotiation	push_negotiation
Called once between the negotiation step and the upload. It provides information about what updates will be performed.

git_transport_cb	transport
Create the transport to use for this operation. Leave NULL to auto-detect.

void *	payload
This will be passed to each of the callbacks in this struct as the last parameter.

Defined in: git2/remote.h