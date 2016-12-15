*DevFlowAnalysis
isNautilusPluginManager

	^ (self windowClass = DFWindowClassMapper tNautilusPluginManager) 
			and: [ self label = 'Nautilus Plugins Manager' ]