*TranscriptInspector-roassal
paintToolUsagePerParticipantOn: aView node: sessionHeadingCollection
	| builder participantIdSortBlock palete legend |
	builder := RTStackBarPlot new.
	builder view: aView.
	participantIdSortBlock := [ :participantId | participantId allButFirst asNumber ].
	palete := (RTColorPalette qualitative colors: 3 scheme: 'FlatUI1').

	((sessionHeadingCollection groupedBy: #participantId affect: [ :col | | stat dyn all |
		stat := (col collect: #staticToolUsageDuration) sum.
		dyn := (col collect: #dynamicToolUsageDuration) sum.
		all := stat + dyn.
		{ (stat / all) asFloat . (dyn / all) asFloat } ]) associations 
			sorted: [ :a :b | (participantIdSortBlock value: a key) < (participantIdSortBlock value: b key) ])
				do: [ :assoc | 
					builder add: assoc value title: assoc key ].
	builder traColorPalette: (RTMultiLinearColor new
			colors: palete).
			
	builder addLabelToBars: [ :assoc | (assoc key * 100) asInteger asString, '%' ] if: [:assoc | assoc key > 0.12 ] color: Color white.

	builder build.

	"legend"

	legend := RTLegendBuilder new.
	legend view: builder view.
	legend onDemand.
	legend addText: 'Static and Dynamic Tool Usage per Participant'.
	legend addColor: palete first text: 'Static tool usage'.
	legend addColor: palete last text: 'Dynamic tool usage'.
	legend build.
	^ builder view.
