*DevFlowAnalysis
gtInspectorEventsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ self events ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Events' ]