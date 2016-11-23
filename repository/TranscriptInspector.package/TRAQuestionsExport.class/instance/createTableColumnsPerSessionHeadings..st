private
createTableColumnsPerSessionHeadings: aCollectionOfSessionHeadings 
	^ OrderedCollection new 
			add: (TRATableColumn toolUsage: (TRAExportToolUsage new sessions: aCollectionOfSessionHeadings));
			addAll: (self 
				createTableColumnsPerSessionHeadings: (aCollectionOfSessionHeadings select: [ :each | each isFamiliarSession not ])
				title: '#1'
				sillito: TRASillito unfamiliarSillito);
			addAll: (self 
				createTableColumnsPerSessionHeadings: (aCollectionOfSessionHeadings select: #isFamiliarSession)
				title: '#2'
				sillito: TRASillito familiarSillito);
			yourself