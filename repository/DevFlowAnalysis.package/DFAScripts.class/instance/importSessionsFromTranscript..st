importing
importSessionsFromTranscript: anOrgDocument 
	"Import DFlow FUEL data from an OrgDocument transcript."
	| sessions |
	sessions := DFSessionsManager new.
	anOrgDocument sessionHeadings do: [ :eachSessionHeading | 
		eachSessionHeading fuelFileReferences do: [ :eachFile | | session |
			session := DFScripts importSessionFromPath: eachFile.
			session title: eachSessionHeading.
			sessions addSession: session. ] ].
	self fixSessionData: sessions.
	sessions computeAttributes.
	^ sessions