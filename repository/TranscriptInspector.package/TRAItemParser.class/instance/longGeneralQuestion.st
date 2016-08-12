accessing
longGeneralQuestion
	^ super longGeneralQuestion ==> [ :nodes | | question |
		question := TRALongGeneralQuestion new.
		question contents: nodes second asString.
		question after: nodes fourth.
		question ]