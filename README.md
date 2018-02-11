# Exploratory Study in Pharo [![Build Status](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo.svg?branch=master)](https://travis-ci.org/JurajKubelka/ExploratoryStudyInPharo)

## Introduction

This repository includes a set of analytical tools that were used to analyze a dataset in the corresponding paper "The Road to Live Programming: Insights From the Practice."

Abstract: Live Programming environments allow programmers to get feedback instantly while changing software. Liveness is gaining attention among industrial and open-source communities; several IDEs offer high degrees of liveness.
While several studies looked at how programmers work during software evolution tasks, none of them consider live environments. We conduct such a study based on an analysis of 17 programming sessions of practitioners using Pharo, a mature Live Programming environment. The study is complemented by a survey and subsequent analysis of 16 programming sessions in additional languages, e.g., JavaScript. We document the approaches taken by developers during their work. We find that some liveness features are extensively used, and have an impact on the way developers navigate source code and objects in their work.

The paper analyze two datasets: a transcript text file and a user interaction data. The transcript is available at: Juraj Kubelka, Romain Robbes, and Alexandre Bergel. (2018). Dataset for The Road to Live Programming: Insights From the Practice (Version v1.0-pre) [Data set]. Link: http://doi.org/10.5281/zenodo.1156932. The user interaction data are available as an extract in the same publication.

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

