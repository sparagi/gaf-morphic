event handling
extent: aPoint 
	"Change my extent, but enforce my size ratio."
	| width |
	width := aPoint x min: aPoint y.
	width := width max: self minWidth.
	super extent: width @ width