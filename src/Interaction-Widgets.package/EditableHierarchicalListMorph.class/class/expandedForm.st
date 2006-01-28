instance creation
expandedForm
	expandedForm
		ifNotNil: [expandedForm depth ~= Display depth
				ifTrue: [expandedForm := nil]].
	^ expandedForm
		ifNil: [expandedForm := ((ColorForm
	extent: 9@9
	depth: 4
	fromArray: #( 4294408191 4026531840 4286578559 4026531840 4160749559 4026531840 2147483647 1879048192 2130706447 1879048192 2147483647 1879048192 4160749559 4026531840 4286578559 4026531840 4294408191 4026531840)
	offset: 0@0)
	colorsFromArray: #(#(0.0 0.0 0.0) #(0.501 0.0 0.0) #(0.0 0.501 0.0) #(0.501 0.501 0.0) #(0.0 0.0 0.501) #(0.501 0.0 0.501) #(0.0 0.501 0.501) #(0.501 0.501 0.501) #(0.753 0.753 0.753) #(1.0 0.0 0.0) #(0.0 1.0 0.0) #(1.0 1.0 0.0) #(0.0 0.0 1.0) #(1.0 0.0 1.0) #(0.0 1.0 1.0) #( )  )) asFormOfDepth: Display depth;
						 yourself]