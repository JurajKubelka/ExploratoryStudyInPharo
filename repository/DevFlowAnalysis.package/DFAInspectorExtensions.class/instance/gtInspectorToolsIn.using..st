gt-inspector-extension
gtInspectorToolsIn: composite using: sessionsHolder
	^ composite roassal2
			title: 'Tools';
			initializeView: [ RTGrapher new ];
			painting: [ :aView | | ds maxDuration normalization sortedSessions pallete legend |
				
	sortedSessions := sessionsHolder sessions sorted: [ :a :b | a familiarRanking < b familiarRanking ].
	maxDuration := (sortedSessions detectMax: #duration) duration.
	normalization := [ :size :duration | size * (duration / maxDuration) ].
	"normalization := [ :size :duration | size ]."
	pallete := RTColorPalette qualitative colors: 4 scheme: 'Set1'.

	aView extent: 600 @ 150.

	ds := RTData new.
	ds interaction popup.
	ds barChartWithBarTitle: [ :aSession | aSession basicTitle, ' ', aSession familiarRanking asString ] rotation: -30.
	ds points: sortedSessions.
	ds y: [ :aSession | 
				normalization
					value: (aSession windows select: [ :aWindow | aWindow windowType isDynamicIDE ]) size
					value: aSession duration ]. 
	ds barShape 
		width: 30; 
		color: pallete first.
	aView add: ds.

	ds := RTData new.
	ds interaction popup.
	ds points: sortedSessions.
	ds y: [ :aSession | 
				normalization
					value: (aSession windows select: [ :aWindow | aWindow windowType isStaticIDE ]) size
					value: aSession duration ]. 
	ds barShape 
		width: 21; 
		color: pallete second.
	aView add: ds.

	ds := RTData new.
	ds interaction popup.
	ds points: sortedSessions.
	ds y: [ :aSession | 
				normalization
					value: (aSession windows select: [ :aWindow | aWindow windowType isExample ]) size
					value: aSession duration ]. 
	ds barShape 
		width: 14; 
		color: pallete third.
	aView add: ds.

	ds := RTData new.
	ds interaction popup.
	ds points: sortedSessions.
	ds y: [ :aSession | 
					normalization
						value: (aSession windows select: [ :aWindow | aWindow windowType isOtherIDE ]) size
						value: aSession duration ]. 
	ds barShape 
		width: 7; 
		color: pallete fourth.
	aView add: ds.

	aView axisX noTick.
	aView axisY noDecimal.
	
	aView build.
	"legend"
	
	legend := RTLegendBuilder new.
	legend view: aView view.

	legend addText: 'Tool Windows'.
	legend addColor: pallete first text: 'Dynamic Tool'.
	legend addColor: pallete second text: 'Static Tool'.
	legend addColor: pallete third text: 'Example Tool'.
	legend addColor: pallete fourth text: 'Another Tool'.
	legend build ]