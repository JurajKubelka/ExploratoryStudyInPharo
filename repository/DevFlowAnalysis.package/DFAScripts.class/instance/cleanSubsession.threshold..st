cleaning
cleanSubsession: aSubsession threshold: aDateTime
	| kMax mMax cMax max |
	aSubsession keyboardEvents: (aSubsession keyboardEvents reject: [ :each | each timeStamp > aDateTime ]).
	aSubsession mouseEvents: (aSubsession mouseEvents reject: [ :each | each timeStamp > aDateTime ]).
	aSubsession methodCalls: (aSubsession methodCalls reject: [ :each | each timeStamp > aDateTime ]).
	"remove windows > aDateTime"
	kMax := aSubsession keyboardEvents detectMax: #timeStamp.
	mMax := aSubsession mouseEvents detectMax: #timeStamp.
	cMax := aSubsession methodCalls detectMax: #timeStamp.
	max := (kMax timeStamp max: mMax timeStamp) max: cMax timeStamp.
	aSubsession endTime: max.