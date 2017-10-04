*TranscriptInspector-toolusage-questions
paintToolUsagePerCategoryOn: aView node: aNode legend: legendBoolean
	| builder palete sillito |
	sillito := (aNode codeType sillito: aNode fullyDefinedQeneralQuestions).
	palete := { Color gray. Color black}.
	builder := RTStackBarPlot new.
	builder view: aView.
	
	sillito groups do: [ :eachCategory | | stat dyn values |
		dyn := eachCategory staticVsLiveToolUsage.
		stat := 1 - dyn.
		values := { stat asFloat . dyn asFloat }.
		builder add: values title: eachCategory shortName asString ].
	builder traColorPalette: (RTMultiLinearColor new
			colors: palete).
			
	builder 
		addLabelToBars: [ :assoc | (assoc key * 100) rounded asInteger asString, '%' ] 
		if: [:assoc | assoc notNil and: [ assoc key > 0.13 ] ] color: Color white.
	
	builder build.
	"Make labels black:"
	(builder view elementsFromModel: nil) do: [ :eachLabel | 
		eachLabel shape class = RTLabel ifTrue: [ eachLabel color: Color black ] ].
	
	legendBoolean ifTrue: [ 
		self 
			paintToolUsageLegendOn: aView 
			staticColor: palete first 
			dynamicColor: palete last ].
	
	^ builder view.
