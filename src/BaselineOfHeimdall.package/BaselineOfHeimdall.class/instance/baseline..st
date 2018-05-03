baseline
baseline: spec
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