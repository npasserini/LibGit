libgit - calls
blame_get_hunk_byline: blame lineno: lineno
	"todo: using LGitBlameHunk* as return value causes random crashes"
	
	^ self
		ffiCallSafely: #(void * git_blame_get_hunk_byline #(self , size_t lineno))
		options: #()