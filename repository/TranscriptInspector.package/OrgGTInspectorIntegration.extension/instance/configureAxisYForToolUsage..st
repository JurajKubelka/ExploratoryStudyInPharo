*TranscriptInspector-toolusage-boxplot
configureAxisYForToolUsage: builder
	builder axisY numberOfTicks: 3.
	builder axisY labelConversion: [ :aNumber | 
		aNumber = 0 
			ifTrue: [ 'Static' ] 
			ifFalse: [ (aNumber * 100) asInteger asString, '% Dynamic'  ] ].
	builder axisY positionLabel: [ :aLabel :aTick | 
		aLabel translateTo: aTick position - (aLabel width // 2 @ 0) - (3 @ 0) ].
