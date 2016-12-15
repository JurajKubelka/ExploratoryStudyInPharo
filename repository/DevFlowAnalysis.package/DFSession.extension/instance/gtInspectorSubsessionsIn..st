*DevFlowAnalysis
gtInspectorSubsessionsIn: composite
	<gtInspectorPresentationOrder: 1>  
	^ self subsessions ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
			 	title: 'Subsessions' ]