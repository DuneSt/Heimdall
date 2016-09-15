baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self seaside3: spec.
			spec
				package: #'Heimdall-Core';
				package: #'Heimdall-Seaside' with: [ spec requires: #('Heimdall-Core' 'Seaside3') ] ]