outdated - versions
version242: spec
	<version: '2.4.2' imports: #('2.3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec
			package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.20';
			package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.6'. ].

	spec for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]
