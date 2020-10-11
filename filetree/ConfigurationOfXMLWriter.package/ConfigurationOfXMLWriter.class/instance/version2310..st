outdated - versions
version2310: spec
	<version: '2.3.10' imports: #('2.3.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #release.
		spec description: 'version 2.3.10'.
		spec author: 'GuillaumeLarcheveque'.
		spec timestamp: '6/27/2014 16:09'.
		spec project: 'OrderPreservingDictionary' with: '1.2'.
		spec 
			package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.15';
			package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-monty.2'. ].

	spec for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]
