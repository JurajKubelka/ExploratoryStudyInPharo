public
normalize: aNumber
	| ratio |
	ratio := aNumber asFloat.
	(ratio isInfinite or: [ ratio isNaN ]) ifFalse: [ ratio := ratio round: 2 ].
	^ ratio