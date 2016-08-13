tests
testParseString
	self testParseStringBasic.
	self assert: result isDocument.
	self assert: result specificQuestions size equals: 2.
	self assert: result generalQuestions size equals: 2.
	self assert: result keywords size equals: 6.
	self assert: result text equals: TRAExamples headingAndLists2.