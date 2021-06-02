libgit - calls
git_tag_delete: aTagName
	"int git_tag_delete(git_repository *repo, const char *tag_name);"
	^ self
		ffiCallSafely: #(LGitReturnCodeEnum git_tag_delete(self , String aTagName))
		options: #()