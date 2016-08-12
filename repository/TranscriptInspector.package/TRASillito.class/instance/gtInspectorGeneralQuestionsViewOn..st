gt-inspector-extension
gtInspectorGeneralQuestionsViewOn: composite
	<gtInspectorPresentationOrder: -2>
	^ composite roassal2
			title: 'GQ Total Numbers';
			when: [ self generalQuestions notEmpty ];
			painting: [ :aView | OrgGTInspectorIntegration uniqueInstance 
					paintOneTypeGeneralQuestionsOn: aView node: self ]