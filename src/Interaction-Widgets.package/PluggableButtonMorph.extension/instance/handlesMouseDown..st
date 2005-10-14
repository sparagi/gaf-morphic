*Interaction-Widgets
handlesMouseDown: evt

	^evt yellowButtonPressed
		ifTrue: [^getMenuSelector notNil]
		ifFalse: [true]