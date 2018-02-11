#!/bin/bash
# It builds a Pharo 6.1 image with the source code of this repository.

# Create a build directory
mkdir -p ./builds && cd ./builds
# Download stable Pharo 6.1 version, including virutal machine and a memory image
wget -O - http://get.pharo.org/61+vm | bash
# Install tools of this repository
./pharo Pharo.image eval "
Metacello new
    baseline: #TranscriptInspector;
    repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
    load.

Metacello new
	baseline: 'DevFlowAnalysis';
	repository: 'github://JurajKubelka/ExploratoryStudyInPharo/repository';
	load.

GTPlayground openContents: 'TRAScripts default inspectTranscript.
DFAScripts default importSessions.'

Smalltalk saveAs: 'Tools'.
Smalltalk snapshot: true andQuit: true.
"
# Execute (open) the Pharo image, including the tools.
./pharo-ui Tools.image
