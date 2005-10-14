event handling
handlesMouseDown: evt 
	 ^(evt yellowButtonPressed and: [menuSelector notNil]) or: [super handlesMouseDown: evt]