outdated - versions
version251: spec 
        <version: '2.5.1' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.28'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.11'.
                ].