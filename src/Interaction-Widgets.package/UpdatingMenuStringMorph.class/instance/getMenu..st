accessing
getMenu: shiftKeyState 
	| menu |
	menuSelector ifNil: [^nil].
	menu := MenuMorph new defaultTarget: menuTarget.
	menuSelector numArgs = 1 
		ifTrue: [menuTarget perform: menuSelector with: menu].
	menuSelector numArgs = 2 
		ifTrue: 
			[^menuTarget 
				perform: menuSelector
				with: menu
				with: menuArguments first]