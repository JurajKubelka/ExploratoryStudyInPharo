*DevFlowAnalysis
gtInspectorKeystrokesIn: composite
	<gtInspectorPresentationOrder: 1>
	| keystrokes |
	keystrokes := self subsessions flatCollect: [ :subSession | 
	 	subSession keyboardEvents 
			select: [ :e | e keystroke includes: $- ]
 			thenCollect: #keystroke ] as: Bag.
	^ keystrokes ifNotNil: [ 
		(keystrokes gtInspectorOccurrencesIn: composite)
			title: 'Shortcuts' ]