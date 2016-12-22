# Exploratory Study in Pharo [![Build Status](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo.svg?branch=master)](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo)

A set of tools that are used for analyzing data gathered during an exploratory study in [Pharo](http://pharo.org).

Orignal source code is in [SmalltalkHub](http://www.smalltalkhub.com/#!/~JurajKubelka/ExploratoryStudyInPharo/).

## Installation 

It is tested on Pharo 5.0. For not it does not work on Pharo 6.0 (developement version), because Petit Parser configuration does not work properly (tested on August 12, 2016).

```
Metacello new
    baseline: #TranscriptInspector;
    repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
    load.
```

If you want to load it in Pharo 5.0 using a local clone of this repository, you first need to load Filetree with GIT support.

```
Metacello new
  baseline: 'FileTree';
  repository: 'github://dalehenrich/filetree:pharo5.0/repository';
  load: 'Git'.
```

Then you can load this project adopting the following code:

```
Metacello new
	baseline: 'TranscriptInspector';
	repository: 'gitfiletree://', (FileLocator documents / '<repository-location>') fullName;
	load.
```

To load DFlow data, you can adopt the following code:

```
Metacello new
	baseline: 'DevFlowAnalysis';
	repository: 'gitfiletree://', (FileLocator documents / '<repository-location>') fullName;
	load.
```

And finally use (adopting file paths to your data):

```
TRAScripts default inspectTranscript.
DFAScripts default importSessions.
```
