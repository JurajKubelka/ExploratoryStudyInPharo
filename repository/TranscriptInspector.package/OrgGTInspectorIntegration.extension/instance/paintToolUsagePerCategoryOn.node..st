*TranscriptInspector-toolusage-questions
paintToolUsagePerCategoryOn: aView node: aNode
	| builder palete legend sillito |
	sillito := (aNode codeType sillito: aNode fullyDefinedQeneralQuestions).
	palete := (RTColorPalette qualitative colors: 3 scheme: 'FlatUI1').
	builder := RTStackBarPlot new.
	builder view: aView.
	
	sillito groups do: [ :eachCategory | | stat dyn values |
		dyn := eachCategory staticVsLiveToolUsage.
		stat := 1 - dyn.
		values := { stat asFloat . dyn asFloat }.
		builder add: values title: eachCategory shortName asString ].
	builder traColorPalette: (RTMultiLinearColor new
			colors: palete).
			
	builder addLabelToBars: [ :assoc | (assoc key * 100) rounded asInteger asString, '%' ] if: [:assoc | assoc key > 0.12 ] color: Color white.

	builder build.

	"legend"

	legend := RTLegendBuilder new.
	legend view: builder view.
"	legend onDemand.
	legend addText: 'Static and Dynamic Tool Usage per Question'.
"	legend addColor: palete first text: 'Static tool usage'.
	legend addColor: palete last text: 'Dynamic tool usage'.
	legend build.
	^ builder view.
