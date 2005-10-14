event handling
mouseDown: evt 
	(evt yellowButtonPressed
			and: [menuSelector notNil])
		ifTrue: [| menu | (menu := self getMenu: evt shiftPressed)
				ifNotNil: [menu setInvokingView: self.
					menu popUpEvent: evt in: self world]].
	^ super mouseDown: evt