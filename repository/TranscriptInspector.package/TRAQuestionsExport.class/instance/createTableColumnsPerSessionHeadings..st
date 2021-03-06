private
createTableColumnsPerSessionHeadings: aCollectionOfSessionHeadings
	| unfamiliarSessions familiarSessions unfamiliarSillito familiarSillito unfamiliarOur familiarOur |
	unfamiliarSessions := aCollectionOfSessionHeadings select: [ :each | each isFamiliarSession not ].
	familiarSessions := aCollectionOfSessionHeadings select: #isFamiliarSession.
	unfamiliarSillito := TRASillito unfamiliarSillito.
	familiarSillito := TRASillito familiarSillito.
	unfamiliarOur := (unfamiliarSillito codeType sillito: (unfamiliarSessions flatCollect: #generalQuestions)) abridge.
	familiarOur := (familiarSillito codeType sillito: (familiarSessions flatCollect: #generalQuestions)) abridge.
	^ OrderedCollection new
		add: (TRATableColumn symbolToolUsage: (TRASillitoToolUsage new sessions: aCollectionOfSessionHeadings));
		add: (TRATableColumn sillitoToolUsage: (TRAToolUsage new sessions: aCollectionOfSessionHeadings));
		add: (TRATableColumn title: 'Unf.' values: unfamiliarOur);
		add: (TRATableColumn title: 'Fam.' values: familiarOur);
		add: (TRATableColumn sillito: unfamiliarSillito);
		add: (TRATableColumn sillito: familiarSillito);
		addAll: (self createTableColumnsForSessionHeadings: unfamiliarSessions sillito: unfamiliarSillito);
		addAll: (self createTableColumnsForSessionHeadings: familiarSessions sillito: familiarSillito);
		yourself