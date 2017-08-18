private
fixSessionData: aDFSessionsManager 
	"Some data are incorect as DFlow manager was closed later, not right after the session."
	(aDFSessionsManager sessions select: [ :session | session duration > 1 day ])
		do: [ :eachSession | 
			self cleanSession: eachSession threshold: 2015 asYear ]