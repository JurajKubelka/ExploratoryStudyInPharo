instance creation
newFamiliarRanking
	"0 = unfamiliar, 1 = familiar"
	^ Dictionary new
		at: #S11 put: 0.9;
		at: #S4 put: 0.5;
		at: #S1 put: 0.2;
		at: #S13 put: 1;
		at: #S12 put: 1;
		at: #S2 put: 0;
		at: #S3 put: 0.5;
		at: #T6 put: 0.8;
		at: #T7 put: 0;
		at: #T2 put: 0;
		at: #T9 put: 0;
		at: #T3 put: 0.1;
		at: #T5 put: 0.5;
		at: #T10a put: 0.4;
		at: #T10b put: 0.4;
		at: #T4 put: 0.9;
		at: #T8 put: 0;
		yourself