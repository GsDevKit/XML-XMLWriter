outdated - versions
version264: spec 
        <version: '2.6.4' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.41'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.21'.
                ].