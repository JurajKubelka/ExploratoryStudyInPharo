tests
testParseString
	result := scripts parseString: OrgExamples headingAndLists2.
	self assert: result isDocument.
	self assert: result specificQuestions size equals: 2.
	self assert: result generalQuestions size equals: 2.
	self assert: result keywords size equals: 6.
	self assert: result text equals: OrgExamples headingAndLists2.