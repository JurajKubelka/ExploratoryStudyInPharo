*DevFlowAnalysis
gtInspectorActionInspectDFlowData
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation |
			(DFAScripts default importSessionsFromTranscript: self) inspect ];
		title: 'Inspect DFlow data' translated;
		icon: DFPharoMenu devFlowIcon;
		yourself