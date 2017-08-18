importing
importSessionsFrom: rootDirectory
	"It imports DFlow sessions from a specific root directory.
	Each session is treated in particular."

	"self uniqueInstance importSessionsFrom: FileLocator desktop / 'ExloratoryStudy2014'."
	"self uniqueInstance importSessionsFrom: FileLocator documents / 'Research' / 'recordings' / 'ExloratoryStudy2014'."
	| sessions session |
	sessions := DFSessionsManager new.

	"June 2014"
	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S2-P2/DFlow-FUEL-3581791366.fuel').
	session title: 'S2 - Romain - Unfamiliar (Roassal2 Menu Background Color) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S4-P4/DFlow-FUEL-Roassal3dShouldAllowOneTo-3581006914.fuel').
	session title: 'S11 - Alexandre - Familiar (Roassal3D) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S6-P6/DFlow-FUEL-3581596893.fuel').
	session title: 'S13 - Johan - Familiar (Replace Growl for Live Robot Programming UI) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S1-P1/DFlow-FUEL-3581355161.fuel').
	session title: 'S1 - Juampi - Unfamiliar (Implement Double Click in Roassal2) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S3-P3/DFlow-FUEL-3582474820.fuel').
	session title: 'S3 - Milton - Unfamiliar (Roassal2 Menu Background Color, Add edgesToAll: messages) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S5-P5/DFlow-FUEL-EditTheInformationOfThe-3581613056.fuel').
	session title: 'S12 - Alvaro - Familiar (Panel Analizador SOA Application) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartA-June2014/S7-P7/DFlow-FUEL-FixingSVGPathBugItDoes-3581081368.fuel').
	session title: 'S4 - Juraj - Unfamiliar (Fix SVGPath movement) - ', session title; yourself.
	self cleanSession: session threshold: '2014-06-24T11:28:05.929539-04:00' asDateAndTime.
	sessions addSession: session.

	"November 2014"
	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T2-P8/DFlow-FUEL-NautilusHistoryAs-3617964542.fuel').
	session title: 'T2 - Alejandro - Unfamiliar (Nautilus History as Plug-in) - ', session title; yourself.
	self cleanSession: session threshold: 2015 asYear.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T3-P9/DFlow-FUEL-Assignment10-3617965108.fuel').
	session title: 'T3 - Miguel - Unfamiliar (Rubric in Nautilus) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T4-P9/DFlow-FUEL-Experimento-3617965242.fuel').
	session title: 'T4 - Miguel - Familiar (Well Sorted Variables in Live Robots) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T5-P10/DFlow-FUEL-3617965466.fuel').
	session title: 'T5 - Pierre - Familiar (Roassal2 Builder) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T6-P11/DFlow-FUEL-PerformanceBug-3617965614.fuel').
	session title: 'T6 - Andrei - Familiar (Big Collections in GT-Inspector) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T7-P11/DFlow-FUEL-NewFeature-3617965837.fuel').
	session title: 'T7 - Andrei - Unfamiliar (Nautilus Hover Highlighting) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T8-P4/DFlow-FUEL-ProgrammingSessionWithGlamour-3617964866.fuel').
	session title: 'T8 - Alexandre - Unfamiliar (Glamour Responsive API) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T9-P5/DFlow-FUEL-3617965992.fuel').
	session title: 'T9 - Alvaro - Unfamiliar (Temporary Variables Management) - ', session title; yourself.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T10-P6/A15-TabKey/DFlow-FUEL-WorkspaceAndTAB-3617969918.fuel').
	session title: 'T10b - Johan - Unfamiliar (TAB key in Workspace) - ', session title; yourself.
	self cleanSession: session threshold: 2015 asYear.
	sessions addSession: session.

	session := (DFScripts importSessionFromPath: rootDirectory / 'PartB-November2014/T10-P6/A16-CmdDotAsInput/DFlow-FUEL-TabKeysIn-3617969657.fuel').
	session title: 'T10a - Johan - Unfamiliar (CMD+. en Workspace) - ', session title; yourself.
	self cleanSession: session threshold: 2015 asYear.
	sessions addSession: session.

	sessions computeAttributes.

	^ sessions