accessing
keyword
	^ super keyword ==> [ :nodes | | question |
		question := TRAKeyword new.
		question contents: nodes second asString.
		question after: nodes fourth.
		question ]