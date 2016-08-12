accessing
unfamiliarSessions
	| sessions |
	sessions := Array new: 12.
	sessions withIndexDo: [ :aNil :index | | session |
		session := TRASillito unfamiliar sillitoForSession: index.
		sessions at: index put: session ].
	^ sessions