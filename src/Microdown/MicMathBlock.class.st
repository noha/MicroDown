"
I'm a math environment

&
\frac{3}
&

may be in the future we should have \[ \]
"
Class {
	#name : #MicMathBlock,
	#superclass : #GHMSameStartStopMarkupBlock,
	#instVars : [
		'arguments'
	],
	#category : #Microdown
}

{ #category : #accessing }
MicMathBlock >> arguments [
	
	^ arguments ifNil: [ arguments := ZnResourceMetaUtils parseQueryFrom: firstLine readStream ]
]

{ #category : #markups }
MicMathBlock >> lineStartMarkup [

	^ parser mathOpeningBlockMarkup 
]