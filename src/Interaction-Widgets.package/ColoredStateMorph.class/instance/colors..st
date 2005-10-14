accessing
colors: aDictionary 
	| newEventHandlers |
	colors := aDictionary.
	newEventHandlers := Dictionary new.
	colors
		keysDo: [:stateSymbol | 
			| handler | 
			handler := eventHandlers
						ifNotNil: [eventHandlers
								at: stateSymbol
								ifAbsent: []].
			newEventHandlers
				at: stateSymbol
				put: (handler
						ifNil: [EventHandler new])].
	eventHandlers := newEventHandlers.
	(colors keys includes: self currentState)
		ifFalse: [currentState := nil].
	self changed