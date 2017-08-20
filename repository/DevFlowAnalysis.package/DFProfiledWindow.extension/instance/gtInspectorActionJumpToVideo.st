*DevFlowAnalysis
gtInspectorActionJumpToVideo
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ :presentation :window | window ifNotNil: #jumpToVideo ];
		title: 'Open in QuickTime Player' translated;
		icon: #glamorousGo asIcon;
		yourself