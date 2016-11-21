*TranscriptInspector
nameGroup: aName as: title color: aColor
	| label |
	label := (RTLabel new text: title; color: aColor) element.
	TRConstraint move: label above: (mapping at: aName).
	view add: label.
	
	"store a reference to the created element"
	names add: label.
	
	^ label