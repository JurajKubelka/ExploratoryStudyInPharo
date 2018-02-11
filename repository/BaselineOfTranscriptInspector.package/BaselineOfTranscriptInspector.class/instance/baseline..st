baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'OSOSX' with: [
			spec
				className: #ConfigurationOfOSOSX;
				version: '0.1';
				repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo60/main/' ].
		spec project: 'Roassal2' with: [
			spec
				className: #ConfigurationOfRoassal2;
				version: '1.50';
				repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
		spec baseline: 'OrgMode' with: [
			spec repository: 'github://JurajKubelka/OrgMode:v0.1.x/repository' ].
		spec package: #TranscriptInspector with: [
				spec requires: #('OrgMode' 'Roassal2' 'OSOSX'). ]. ].
