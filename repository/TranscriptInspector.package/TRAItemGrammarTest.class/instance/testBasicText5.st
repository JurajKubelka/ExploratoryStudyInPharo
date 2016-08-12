tests - basic text
testBasicText5
	source := 'GQ"Who''s John?"'.
	self fail: source rule: #basicText.
