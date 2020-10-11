outdated - versions
version231: spec
	<version: '2.3.1' imports: #('2.3.1-baseline')>
	spec
		for: #common
			do: [ spec
					description: 'Enhancements made by monty to support Entity% and others';
					blessing: #release;
					package: 'XML-Writer-Core' with: 'XML-Writer-Core-monty.5' ;
					package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-StephaneDucasse.1' ];
		
	
		for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]