*Interaction-Widgets
hash
	"Answer my hash value."

	^(model hash bitXor: actionSelector) bitXor: (getLabelSelector bitXor: arguments)