outdated - versions
version252: spec 
        <version: '2.5.2' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.29'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.12'.
                ].