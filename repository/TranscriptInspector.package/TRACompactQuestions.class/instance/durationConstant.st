configuration
durationConstant
	^ durationConstant ifNil: [ durationConstant := self sillito maxQuestionDuration // 8 ]