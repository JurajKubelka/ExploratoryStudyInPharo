missed opportunity
missedOpportunitesAndFalseAssumptions: aNode
	| table addBlock dynBlock |
	table := Dictionary new.
	addBlock := [ :keyword :index | | line |
		line := table 
			at: keyword sessionHeading 
			ifAbsentPut: [ ((1 to: 5) 
				collect: [ :e | OrderedCollection new ]) 
					at: 1 put: keyword sessionHeading;
					yourself ].
		(line at: index) add: keyword ].
	dynBlock := [ :keyword :index | | toolUsage |
		toolUsage := keyword staticVsLiveToolUsage.
		(toolUsage between: 0.5 and: 1.0)
			ifTrue: [ addBlock value: keyword value: index + 0 ] 
			ifFalse: [ (toolUsage between: 0.0 and: 0.5)
				ifTrue: [ addBlock value: keyword value: index + 1 ] ] ].
	(aNode transcriptHeadings flatCollect: #keywords) 
		do: [ :e | e isMissOpportunity 
			ifTrue: [ dynBlock value: e value: 2 ]
			ifFalse: [ e isFalseAssumption ifTrue: [ dynBlock value: e value: 4 ] ] ].
	^ table