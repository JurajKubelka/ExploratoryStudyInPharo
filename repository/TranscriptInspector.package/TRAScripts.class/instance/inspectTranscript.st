public
inspectTranscript
	"self new inspectTranscript"
	| file |
	file := FileLocator workingDirectory / 'transcripts.org.txt'.
	"Localy"
	file exists ifFalse: [ 
		file := FileLocator documents / 'Research'
			/ 'ExploratoryStudyInPharo2014' / 'transcripts.org.txt' ].
	"Part of SANER paper"
	file exists ifFalse: [ 
			file := FileLocator documents / 'Research'
				/ 'MyResearchPapers' / '2018-Saner-Dev-Questions' / 'transcript' / 'transcripts.org.txt' ].
	"Part of ICSE paper"
	file exists ifFalse: [ 
			file := FileLocator documents / 'Research'
				/ 'MyResearchPapers' / '2018-ICSE' / 'transcript' / 'transcripts.org.txt' ].
	"Part of TSE paper"
	file exists ifFalse: [ 
			file := FileLocator documents / 'Research'
				/ 'MyResearchPapers' / '2016-TSE' / 'transcript' / 'transcripts.org.txt' ].
	"Dropbox"
	file exists ifFalse: [ 
			file := FileLocator home / 'Dropbox' / 'Documents' / 'UChile'
				/ 'ExploratoryStudyInPharo2014' / 'transcripts.org.txt' ].
	"iCloud - TSE 2016 submodule"
	"	Research/MyResearchPapers/2016-TSE/transcript"
	file exists ifFalse: [ 
			file := FileLocator userLibrary / 'Mobile Documents' / 'com~apple~CloudDocs' / 'Research'
				/ 'MyResearchPapers' / '2016-TSE' / 'transcript' / 'transcripts.org.txt' ].
	"iCloud"
	file exists ifFalse: [ 
			file := FileLocator userLibrary / 'Mobile Documents' / 'com~apple~CloudDocs' / 'Research'
				/ 'ExploratoryStudyInPharo2014' / 'transcripts.org.txt' ].
	^ self parseFile: file