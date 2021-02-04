tests
testDiffTreeToTree
	| referenceCommit diffCommit diff printDiff |
	self touchFileAndCommit.
	referenceCommit := self repository head object.
	diffCommit := referenceCommit parentAt: 1.
	diff := (LGitDiff of: self repository)
		diffTree: diffCommit tree toTree: referenceCommit tree;
		yourself.
		
	self assert: diff numberOfDeltas equals: 1.
	printDiff := 'diff --git a/libgit_tests/foo b/libgit_tests/foo
index adaf5af..ac8c458 100644
--- a/libgit_tests/foo
+++ b/libgit_tests/foo
@@ -1 +1 @@
eat my shorts
\ No newline at end of file
extra textrts
\ No newline at end of file
' copyReplaceAll: Character cr asString with: Character lf asString.
	self assert: (diff patchAt: diff numberOfDeltas) printDiff equals: printDiff