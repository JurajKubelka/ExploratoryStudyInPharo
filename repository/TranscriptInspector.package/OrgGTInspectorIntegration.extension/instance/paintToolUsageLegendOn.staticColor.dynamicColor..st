*TranscriptInspector-toolusage-questions
paintToolUsageLegendOn: aView staticColor: staticColor dynamicColor: dynamicColor
	| legend |
	legend := RTLegendBuilder new.
	legend view: aView.
"	legend onDemand.
	legend addText: 'Static and Dynamic Tool Usage per Question'.
"	legend addColor: staticColor text: 'Static tool usage'.
	legend addColor: dynamicColor text: 'Dynamic tool usage'.
	legend build.
	^ aView