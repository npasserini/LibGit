tests
testDiffContentForCommit
	| referenceCommit diffCommit diff delta newFile relativePath oldFile |
	self touchFileAndCommit.
	referenceCommit := self repository head object.
	diffCommit := referenceCommit parentAt: 1.
	diff := (LGitDiff of: self repository)
		diffTree: referenceCommit tree toTree: diffCommit tree;
		yourself.

	"number of changed files"
	self assert: diff numberOfDeltas equals: 1.
	delta := diff deltaAt: diff numberOfDeltas.
	
	"what change has been made to a given file"
	self assert: delta status equals: LGitDeltaTypeEnum git_delta_modified.
	newFile := delta newFile.
	oldFile := delta oldFile.
	"informations about the objects in the delta, e.g. old / new id"
	self assert: newFile path equals: oldFile path.
	relativePath := self file parent basename, '/', self file basename.
	self assert: newFile path equals: relativePath.

	String streamContents: [ :stream |
		diff
			filesDo: [ :currentDelta :progress :payload | 0 ]
			binaryFilesDo: nil
			hunksDo: [ :currentDelta :hunk :payload |
				stream
					"hunk start"
					nextPutAll: 'start: ';
					nextPutAll: hunk oldStart asString;
					nextPutAll: ' -> ';
					nextPutAll: hunk newStart asString; crlf;
					"hunk end"
					nextPutAll: 'end: ';
					nextPutAll: (hunk oldStart + hunk oldNumberOfLines) asString;
					nextPutAll: ' -> ';
					nextPutAll: (hunk newStart + hunk newNumberOfLines) asString; crlf.
					0 ]
			linesDo: [ :currentDelta :hunk :line :payload |
				stream
					nextPutAll: line oldLineNumber asString;
					nextPutAll: ' -> ';
					nextPutAll: line newLineNumber asString; crlf;
					nextPutAll: line content;
					nextPutAll: '; length: ';
					nextPutAll: line size asString; crlf.
					0 ] ]