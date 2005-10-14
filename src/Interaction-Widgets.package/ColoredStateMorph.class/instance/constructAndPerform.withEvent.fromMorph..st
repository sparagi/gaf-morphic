event handling
constructAndPerform: messageInfo withEvent: event fromMorph: aMorph 
	| recipient selector parameters |
	recipient := messageInfo first.
	selector := messageInfo second.
	parameters := messageInfo third.
	selector numArgs = 0 
		ifTrue: [recipient perform: selector]
		ifFalse: [recipient perform: selector withArguments: parameters]