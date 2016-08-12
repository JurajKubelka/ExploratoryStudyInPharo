*TranscriptInspector-questions
paintGeneralQuestionsLegendOn: aView text: aString ourColor: dataColor sillitoColor: sillitoColor
	
	| legend |
	legend := RTLegendBuilder new.
	"legend onDemand."
	legend view: aView.

	"legend addText: aString."
	legend addColor: dataColor text: 'Our Session(s)'.
	legend addColor: sillitoColor text: 'Sillito Sessions'.
	legend build
