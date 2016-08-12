baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec project: 'OrgMode' with: [
				spec
					className: #ConfigurationOfOrgMode;
					repository: 'github://JurajKubelka/OrgMode/repository' ].
		spec package: #TranscriptInspector with: [
				spec requires: #('OrgMode' ). ]. ].
