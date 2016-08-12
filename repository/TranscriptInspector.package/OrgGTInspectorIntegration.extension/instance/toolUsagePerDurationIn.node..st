*TranscriptInspector-toolusage-boxplot
toolUsagePerDurationIn: aView node: aNode
	| builder data xNames deco keywords static dynamic rejectBlock |
	keywords := aNode toolUsageKeywords.
	rejectBlock := [ :aKeyword | aKeyword duration > 300 seconds ].
	static := (keywords select: #isStaticTool) reject: rejectBlock.
	dynamic := (keywords select: #isDynamicTool) reject: rejectBlock.
	xNames := { 'Static'. 'Dynamic' }.

	builder := RTGrapher new.
	builder view: aView.
	builder extent: 150 @ 200.

	{ static. dynamic } do: [ :eachKeywords |
		data := RTBoxPlotDataSet new.
		data showMean: true.
		data meanShape size: 10.
		data outlierShape size: 8.
		data points: eachKeywords. 
		data model: eachKeywords.
		data y: [ :eachKeyword | eachKeyword duration asSeconds ].
		builder add: data.
	].

	builder axisX noLabel; noTick. 
	deco := RTHorizontalAllValuesDecorator new.
	deco labelRotation: 0;
		labelConversion: [ :index | xNames at: index ].
	builder addDecorator: deco.

	builder build.
	^ builder view.
		
	