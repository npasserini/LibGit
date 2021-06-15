A LGitReference represents the reference to a git object. References can be symbolic as for instance HEAD or a branch etc.
See [https://libgit2.org/libgit2/#HEAD/group/reference](https://libgit2.org/libgit2/#HEAD/group/reference)

Instance Variables
	handle:		NBExternalObject
	repoHandle:	NBExternalObject

handle
	- the reference to the external object representing the reference

repoHandle
	- the reference to the repository in which the reference is contained
