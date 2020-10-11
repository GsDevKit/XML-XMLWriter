outdated - versions
version268: spec 
        <version: '2.6.8' imports: #('2.6.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.46'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.26'.
                ].