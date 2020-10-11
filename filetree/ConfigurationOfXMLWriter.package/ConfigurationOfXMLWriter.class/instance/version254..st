outdated - versions
version254: spec 
        <version: '2.5.4' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.31'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.14'.
                ].