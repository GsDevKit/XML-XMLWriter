outdated - baselines
baseline243: spec
	<version: '2.4.3-baseline'>
	spec
		for: #common
		do: [ 
			spec
				blessing: #baseline;
				description: 'Moving to PharoExtras';
				repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLWriter/main'.
			spec
				project: 'OrderPreservingDictionary'
				with: [ 
					spec
						className: 'ConfigurationOfOrderPreservingDictionary';
						versionString: #stable;
						loads: #('Core');
						repository: 'http://smalltalkhub.com/mc/PharoExtras/OrderPreservingDictionary/main' ].
			spec package: 'XML-Writer-Core' with: [ spec requires: 'OrderPreservingDictionary' ].
			spec package: 'XML-Writer-Tests' with: [ spec requires: 'XML-Writer-Core' ].
			spec
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('XML-Writer-Core');
				group: 'Tests' with: #('XML-Writer-Tests')].	
	spec
		for: #gemstone
		do: [ 
			spec
				package: 'Collections-Support'
					with: [ 
							spec
								file: 'Collections-Support.g';
								repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ];
				package: 'Collections-Tests-Support'
					with: [ 
							spec
								file: 'Collections-Tests-Support.g';
								requires: 'Collections-Support';
								repository: 'http://seaside.gemtalksystems.com/ss/XMLSupport' ].
			spec group: 'Tests' with: #('Collections-Tests-Support').
			"moved from version methods"
			spec
				package: 'Collections-Support' with: 'Collections-Support.g-OttoBehrens.45';
				package: 'Collections-Tests-Support' with: 'Collections-Tests-Support.g-OttoBehrens.3' ] 