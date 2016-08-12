api
from: aCollection 
	| names |
	names := (aCollection collect: #contents as: Set) sorted: [ :a :b | a < b ].
	^ names collect: [ :eachName | | keywords |
			keywords := aCollection select: [ :eachKeyword | eachKeyword contents = eachName ].
			keywords := keywords sorted: [ :a :b | 
				a sessionOrder = b sessionOrder 
					ifTrue: [ (a timespan notNil and: [ b timespan notNil ]) 
									ifTrue: [ a timespan < b timespan ]
									ifFalse: [ true ] ]
					ifFalse: [ a sessionOrder < b sessionOrder ] ].
			self new 
					keywordName: eachName; 
					keywords: keywords;
					yourself ]