*DevFlowAnalysis
isSettingBrowserWindow
	^ (self windowClass = DFWindowClassMapper tStandardWindow) 
			and: [ self label = 'Settings browser' ]