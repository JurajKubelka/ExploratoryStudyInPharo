accessing
shortGeneralQuestion
	^ super shortGeneralQuestion ==> [ :nodes | | question |
		question := TRAShortGeneralQuestion new.
		question contents: nodes second asString.
		question after: nodes third.
		question ]