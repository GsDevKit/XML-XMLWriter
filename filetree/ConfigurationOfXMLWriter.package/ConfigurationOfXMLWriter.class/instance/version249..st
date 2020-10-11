outdated - versions
version249: spec 
        <version: '2.4.9' imports: #('2.4.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.27'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.10'.
                ].