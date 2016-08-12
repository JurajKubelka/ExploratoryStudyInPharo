*TranscriptInspector
staticVsDynamicToolUsageRatio
	^ self attributeAt: #staticVsDynamicToolUsageRatio ifAbsentPut: [ | keywords static dynamic s d |
			keywords := self toolUsageKeywords.
			static := keywords select: #isStaticTool.
			dynamic := keywords select: #isDynamicTool.
			s := static sum: #duration.
			d := dynamic sum: #duration.
			(d / (s + d)) ]