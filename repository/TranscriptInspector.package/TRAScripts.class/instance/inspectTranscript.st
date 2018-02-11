public
inspectTranscript
	"self new inspectTranscript"
	| file |
	file := FileLocator workingDirectory / 'transcripts.org.txt'.
	file exists ifFalse: [ self error: 'the transcript file does not exists' ].
	^ self parseFile: file