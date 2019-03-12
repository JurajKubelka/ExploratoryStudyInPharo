# Exploratory Study in Pharo [![Build Status](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo.svg?branch=master)](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo)

This repository includes a set of analytical tools that were used to analyze a dataset in research studies published in the following venues:

- Title: *The Road to Live Programming: Insights From the Practice*
- Authors: Juraj Kubelka, Romain Robbes, Alexandre Bergel
- [ICSE 2018](https://www.icse2018.org/event/icse-2018-technical-papers-the-road-to-live-programming-insights-from-the-practice)

Title: *Live Programming and Software Evolution: Questions during a Programming Change Task*
- Authors: Juraj Kubelka, Romain Robbes, Alexandre Bergel
- [ICPC 2019](https://conf.researchr.org/home/icpc-2019)

## Installation 

The tools are developed in [Pharo](http://pharo.org) version 6.1. To install it, you can use a Bash script: [build.sh](scripts/build.sh). It will produce a Pharo 6.1 image including tools of this repository.

You can also install it manually using the following two installation commands: The first one is for transcript text analysis, the second one for  [DFlow](http://dflow.inf.usi.ch) user interaction data analysis.

```Smalltalk
Metacello new
    baseline: #TranscriptInspector;
    repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
    load.

Metacello new
	baseline: 'DevFlowAnalysis';
	repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
	load.
```

Some features, e.g., opening video files, require Apple macOS operating system.

## Execution

To open GT-Inspectors for the transcript and user interaction data analysis, inspect results of the following two commands:

```Smalltalk
TRAScripts default inspectTranscript.
DFAScripts default importSessions.
```

Note: The collected data are not currently available for public use.

## Notes

Original source code is in [SmalltalkHub](http://www.smalltalkhub.com/#!/~JurajKubelka/ExploratoryStudyInPharo/).
