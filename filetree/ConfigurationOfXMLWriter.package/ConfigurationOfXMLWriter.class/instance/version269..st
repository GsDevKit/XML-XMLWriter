outdated - versions
version269: spec 
        <version: '2.6.9' imports: #('2.6.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.47'.
			spec package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.27'.
                ].