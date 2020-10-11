outdated - versions
version276: spec 
        <version: '2.7.6' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.60'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.32'.
                ].