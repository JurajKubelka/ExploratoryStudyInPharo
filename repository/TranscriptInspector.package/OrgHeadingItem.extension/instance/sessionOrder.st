*TranscriptInspector
sessionOrder
	| id letter number |
	id := self sessionId.
	letter := id first.
	number := id allButFirst asNumber.
	^ letter codePoint * 100 + number