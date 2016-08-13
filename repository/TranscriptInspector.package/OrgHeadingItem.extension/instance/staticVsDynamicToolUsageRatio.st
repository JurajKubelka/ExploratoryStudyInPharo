*TranscriptInspector
staticVsDynamicToolUsageRatio
	^ self attributeAt: #staticVsDynamicToolUsageRatio ifAbsentPut: [ | keywords static dynamic s d |
			keywords := self toolUsageKeywords.
			static := keywords select: #isStaticTool.
			dynamic := keywords select: #isDynamicTool.
			s := static ifEmpty: 0 ifNotEmpty: [ :aCollection | aCollection sum: #duration ].
			d := dynamic ifEmpty: 0 ifNotEmpty: [ :aCollection | aCollection sum: #duration ].
			(s + d) isZero 
				ifTrue: [ Float infinity ]
				ifFalse: [ (d / (s + d)) ] ]