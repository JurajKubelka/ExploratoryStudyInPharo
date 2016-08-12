tests - basic text
testBasicText7
	source := 'text line1
text line2'.
	self fail: source rule: #basicText.
