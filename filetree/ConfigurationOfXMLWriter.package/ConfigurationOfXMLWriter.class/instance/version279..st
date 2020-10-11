outdated - versions
version279: spec 
        <version: '2.7.9' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.66'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.36'.
                ].