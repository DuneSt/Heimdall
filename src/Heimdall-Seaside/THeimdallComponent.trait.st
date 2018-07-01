"
I am a trait to make a seaside component benefits from everything provided by HeimdallSession
"
Trait {
	#name : #THeimdallComponent,
	#category : #'Heimdall-Seaside-Traits'
}

{ #category : #'error-management' }
THeimdallComponent >> popAllErrorMessages [
	^ self session popAllErrorMessages
]

{ #category : #'error-management' }
THeimdallComponent >> pushErrorMessage: anErrorMessage [
	self session pushErrorMessage: anErrorMessage
]
