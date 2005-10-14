event handling
on: eventName over: stateSymbol send: message to: recipient withValues: parameters 
	| messageInfo handler |
	messageInfo := Array
				with: recipient
				with: message
				with: parameters.
	handler := eventHandlers at: stateSymbol.
	handler
		on: eventName
		send: #constructAndPerform:withEvent:fromMorph:
		to: self
		withValue: messageInfo