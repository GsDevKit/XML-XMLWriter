outdated - versions
version275: spec 
        <version: '2.7.5' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.59'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.31'.
                ].