tests
testDefaultSignatureWithUTF8Strings
	| subTree rootTree signature head signatureName signatureEmail |
	signatureName := 'Bärt Simpsón'.
	signatureEmail := 'bärtman@gótham.com'.
	signature := LGitSignature
		name: signatureName utf8Encoded asString
		email: signatureEmail utf8Encoded asString.

	"This test creates a LGitSignature that emulates how default signature
	is read on my MacOS, and I think it can be generalizable to others.

	Example:

	In terminal:
		$ git config --global user.name 'Martín Dias'
	
	From this test:
		repository defaultSignature prim_name readString >>> 'MartÃ­n Dias'

	BTW, the ~/.gitconfig, where git stores the global user.name, is uft8-encoded.
	"

	subTree := self createSubTreeWith: self createBlob.
	rootTree := self createRootTreeWith: subTree.
	(LGitCommitBuilder of: repository)
		tree: rootTree;
		message: 'eat my shorts';
		parents: {};
		updateReference: repository branches first name;
		author: signature;
		committer: signature;
		writeCommit.

	head := repository head object.
	self assert: head author equals: signature.
	self assert: head committer equals: signature.
	self assert: head author name equals: signatureName.
	self assert: head author email equals: signatureEmail.
