accessing
familiarSessions
	| sessions |
	sessions := Array new: 15.
	sessions withIndexDo: [ :aNil :index | | session |
		session := TRASillito familiar sillitoForSession: index.
		sessions at: index put: session ].
	^ sessions