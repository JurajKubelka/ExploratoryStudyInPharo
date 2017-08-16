# Exploratory Study in Pharo [![Build Status](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo.svg?branch=master)](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo)

A set of tools that are used for analyzing data gathered during an exploratory study in [Pharo](http://pharo.org).

Original source code is in [SmalltalkHub](http://www.smalltalkhub.com/#!/~JurajKubelka/ExploratoryStudyInPharo/).

## Installation 

It is tested on Pharo 6.0.
Currently it is maintained in Pharo 6.1, as it is includes [Iceberg](https://github.com/pharo-vcs/iceberg), a GitHub integration.

To analyze a transcript text files install:

```Smalltalk
Metacello new
    baseline: #TranscriptInspector;
    repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
    load.
```

To analyze [DFlow](http://dflow.inf.usi.ch) data install:

```Smalltalk
Metacello new
	baseline: 'DevFlowAnalysis';
	repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
	load.
```

And finally use (adopting file paths to your data):

```
TRAScripts default inspectTranscript.
DFAScripts default importSessions.
```

Note: The collected data are not currently available for public use.
