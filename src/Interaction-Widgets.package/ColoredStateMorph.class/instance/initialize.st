initialization
initialize
	"Set my initial state."
	super initialize.
	self minWidth: 8;
		 hResizing: #spaceFill;
		 vResizing: #spaceFill;
		 borderColor: #raised