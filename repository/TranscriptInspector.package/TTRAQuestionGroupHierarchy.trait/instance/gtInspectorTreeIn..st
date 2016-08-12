gt-inspector-extension
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite tree
		title: 'Hierarchy';
		display: [ self children ];
		children: #children