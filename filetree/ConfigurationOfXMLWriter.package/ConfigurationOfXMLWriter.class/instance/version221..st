outdated - versions
version221: spec
	<version: '2.2.1' imports: #('2.1.0-baseline')>
	spec
		for: #common
			do: [ spec
					blessing: #release;
					package: 'XML-Writer-Core' with: 'XML-Writer-Core-CamilloBruni.2' ;
					package: 'XML-Writer-Tests' with: 'XML-Writer-Tests-StephaneDucasse.1' ];
		
	
		for: #gemstone
			do: [ 
					spec
						package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
						package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ]