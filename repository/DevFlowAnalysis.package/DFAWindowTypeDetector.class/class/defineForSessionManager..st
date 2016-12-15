public
defineForSessionManager: aDFSessionsManager 
	aDFSessionsManager sessions do: [ :eachSession |
		self defineForSession: eachSession ] 