Class {
	#name : #BaselineOfHeimdall,
	#superclass : #BaselineOf,
	#category : 'BaselineOfHeimdall'
}

{ #category : #baseline }
BaselineOfHeimdall >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			"Dependencies"
			self seaside3: spec.
			
			"Packages"
			spec
				package: #'Heimdall-Core';
				package: #'Heimdall-Core-Tests' with: [ spec requires: #('Heimdall-Core') ];
				package: #'Heimdall-Seaside' with: [ spec requires: #('Heimdall-Core' 'Seaside3') ].
			
			"Groups"
			spec
				group: 'minimal' with: #(#'Heimdall-Core');
				group: 'seaside' with: #(#'Heimdall-Seaside');
				group: 'tests' with: #(#'Heimdall-Core-Tests') ]
]

{ #category : #accessing }
BaselineOfHeimdall >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]

{ #category : #dependencies }
BaselineOfHeimdall >> seaside3: spec [
	spec
		baseline: 'Seaside3'
		with: [ spec
				loads: #('Core');
				repository: 'github://SeasideSt/Seaside/repository' ]
]
