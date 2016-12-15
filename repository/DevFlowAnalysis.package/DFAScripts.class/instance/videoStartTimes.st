accessing
videoStartTimes
	^ videoStartTimes ifNil: [ videoStartTimes := self newVideoStartTimes ]