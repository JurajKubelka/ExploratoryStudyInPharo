*DevFlowAnalysis
gtInspectorActionInspectDFlowDataDebug
	"DFlow data are not fixed (cleaned)."
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation |
			(DFAScripts default 
				importSessionsFromTranscript: self 
				fixSessionData: false) inspect ];
		title: 'Inspect DFlow data without cleaning process' translated;
		icon: #smallExpert asIcon;
		yourself