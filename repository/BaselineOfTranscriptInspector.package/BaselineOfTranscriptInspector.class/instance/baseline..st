baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'OrgMode' with: [
				spec
					className: #ConfigurationOfOrgMode;
					version: #'stable';
					repository: 'github://JurajKubelka/OrgMode:master/repository' ].
		spec package: #TranscriptInspector with: [
				spec requires: #('OrgMode' ). ]. ].
