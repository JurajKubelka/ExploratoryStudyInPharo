accessing
question: aOccurrencesCollection
	^ (TRASillitoQuestion perform: (#q, aOccurrencesCollection second asString) asSymbol)
			toolUsage: (self newToolUsageType: (aOccurrencesCollection at: self columnToolUsage));
			yourself