gt-inspector-extension
gtInspectorWindowsIn: composite
	<gtInspectorPresentationOrder: -10>  
	^ DFAInspectorExtensions uniqueInstance 
		gtInspectorWindowsIn: composite using: [ self ]