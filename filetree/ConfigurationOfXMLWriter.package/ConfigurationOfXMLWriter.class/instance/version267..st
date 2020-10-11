outdated - versions
version267: spec 
        <version: '2.6.7' imports: #('2.6.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.45'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.25'.
                ].