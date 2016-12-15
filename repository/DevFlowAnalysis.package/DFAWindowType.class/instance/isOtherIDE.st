testing
isOtherIDE
	^ self isIDE and: [ self isDynamicIDE not and: [ self isStaticIDE not and: [ self isExample not ] ] ]