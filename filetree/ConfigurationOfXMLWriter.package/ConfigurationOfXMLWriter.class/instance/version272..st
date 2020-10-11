outdated - versions
version272: spec 
        <version: '2.7.2' imports: #('2.7.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.52'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.28'.
                ].