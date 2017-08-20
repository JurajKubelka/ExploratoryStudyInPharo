utility
linkPreAndRealDebuggersForSessionManager: aDFSessionsManager 
	"Link pre-debugger and real-debugger windows, if a real-debugger follows a pre-debugger window."
	aDFSessionsManager sessions do: [ :eachSession | | realDebuggers |
		realDebuggers := eachSession windows select: #isRealDebugger.
		eachSession windows do: [ :eachWindow | 
			eachWindow isPreDebugger ifTrue: [ 
				realDebuggers 
					detect: [ :realDebugger | 
						self isPreDebugger: eachWindow followedByRealDebugger: realDebugger ]  
					ifFound: [ :realDebugger | 
						self linkPreDebugger: eachWindow withRealDebugger: realDebugger ] 
					ifNone: [ "ignore" ] ] ]
		 ].