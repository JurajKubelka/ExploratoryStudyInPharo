*TranscriptInspector
staticVsLiveToolUsageFrom: startDateAndTime to: endDateAndTime
	^ TRAToolUsageNormalizer new
			intervals: self toolUsageKeywords;
			from: startDateAndTime;
			to: endDateAndTime;
			ratio