accessing
basicTextWords
	^ 'GQ"' asParser not, 'Q"' asParser not, 
		($Q asParser, #letter asParser optional, #digit asParser plus) not,
		'c"' asParser not,
			(PPPredicateObjectParser anyExceptAnyOf: 
				{ Character space . Character tab . Character cr . Character lf. })