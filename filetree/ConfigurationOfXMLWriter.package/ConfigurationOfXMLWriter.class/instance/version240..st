outdated - versions
version240: spec
	<version: '2.4.0' imports: #('2.3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec description: 'version 2.4.0'.
		spec project: 'OrderPreservingDictionary' with: '1.2'.
		spec 
			package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.17';
			package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.3'. ].

	spec for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]
