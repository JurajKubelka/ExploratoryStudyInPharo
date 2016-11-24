converting
questionId: aTRASillitoQuestion 
	| numbers chars id |
	numbers := #($1 $2 $3 $4 $5 $6 $7 $8 $9 $0 $r $e).
	chars :=   #($Q $W $E $R $T $Z $U $I $O $P $r $e).
	id := aTRASillitoQuestion shortName asString.
	^ id collect: [ :eachChar | | index |
		index := numbers indexOf: eachChar.
		chars at: index ].