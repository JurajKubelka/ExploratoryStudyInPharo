converting
exportLaTeX
	^ TRASillitoExport new 
			sillito: self;
			latex;
			contents