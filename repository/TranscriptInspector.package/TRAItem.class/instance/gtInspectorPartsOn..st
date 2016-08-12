gt-inspector-extension
gtInspectorPartsOn: composite
	<gtInspectorPresentationOrder: -3>
	^ composite table
			title: 'Parts';
			display: #parts;
			when: #hasParts;
			column: 'Type' evaluated: #class width: 150;
			column: 'Text' evaluated: #text width: 300;
			beMultiple;
			sendOneOrMultiple