outdated - versions
version278: spec 
        <version: '2.7.8' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.65'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.35'.
                ].