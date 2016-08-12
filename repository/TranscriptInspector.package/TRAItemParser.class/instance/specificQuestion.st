accessing
specificQuestion
	^ super specificQuestion ==> [ :nodes | | question |
		question := TRASpecificQuestion new.
		question contents: nodes second asString.
		question after: nodes fourth.
		question ]