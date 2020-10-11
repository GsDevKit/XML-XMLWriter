outdated - versions
version274: spec 
        <version: '2.7.4' imports: #('2.7.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.55'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.30'.
                ].