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
