outdated - baselines
baseline251: spec 
		<version: '2.5.1-baseline' imports: #('2.5.0-baseline')>

		spec for: #gemstone do: [
			spec blessing: #baseline.
			spec
				package: 'XML-Writer-GemstoneCompatibility'
				with: 'XML-Writer-GemstoneCompatibility-monty.2'. ].