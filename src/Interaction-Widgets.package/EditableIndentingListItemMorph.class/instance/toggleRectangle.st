private
toggleRectangle
	| h |
	h := bounds height.
	^ bounds left + (18 * indentLevel) @ bounds top extent: 17 @ h