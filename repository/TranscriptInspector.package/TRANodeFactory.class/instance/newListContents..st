instance creation
newListContents: contents
	"here we will parse contents according to questions, etc."
	| text item lines |
	text := String streamContents: [ :aStream |
		contents do: [ :eachLine | 
			eachLine isListParagraph ifTrue: [ eachLine printAllTextOn: aStream ] ] ].
	item := self itemParser parse: text.
	self haltIf: [ item isPetitFailure ].
	lines := Array with: item withAll: (contents reject: #isListParagraph).
	^ OrgListContent new 
			lines: lines;
			yourself