*DevFlowAnalysis
gtInspectorDynamicIDEIn: composite
	<gtInspectorPresentationOrder: -5>  
	^ composite roassal2
			title: 'Tools';
			initializeView: [ RTPieBuilder new ];
			painting: [ :aView |
								aView interaction popup.
								aView shape current
									innerRadius: 70;
									externalRadius: 100.
								aView objects: ((self windows 
											collect: #windowType 
											thenSelect: [ :e | e ifNotNil: #isIDE ifNil: false ]) 
												groupedBy: #typeName) asArray.
								aView slice: #size.
								aView normalizer distinctColor.	
								aView build ]