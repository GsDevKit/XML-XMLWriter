outdated - versions
version281: spec 
        <version: '2.8.1' imports: #('2.8.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.70'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.37'.
                ].