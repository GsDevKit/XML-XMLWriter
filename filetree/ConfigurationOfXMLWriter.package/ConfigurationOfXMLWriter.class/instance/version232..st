outdated - versions
version232: spec
	<version: '2.3.2' imports: #('2.3.1-baseline')>
	spec
		for: #common
			do: [ spec
					blessing: #release;
					package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.6' ;
					package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-StephaneDucasse.1' ];
		
	
		for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]