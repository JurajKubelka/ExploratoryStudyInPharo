cleaning
fixSessionData: aDFSessionsManager 
	"Some data are incorect as DFlow manager was closed later, not right after the session."
	(aDFSessionsManager sessions "select: [ :session | session duration > 1 day ]")
		do: [ :eachSession | | duration endTime |
			duration := eachSession title endTime asTime.
			endTime := eachSession title videoStartTime asDateAndTime + duration.
			self cleanSession: eachSession threshold: endTime ]