accessing
basicText
	^ super basicText ==> [ :text | | question |
		question := TRASentence new.
		question contents: text asString.
		question ]