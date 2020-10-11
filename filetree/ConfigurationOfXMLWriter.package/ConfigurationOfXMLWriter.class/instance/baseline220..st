outdated - baselines
baseline220: spec
	<version: '2.2.0-baseline'>
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
				group: 'Tests' with: #('XML-Writer-Tests')	"default by default is equivalent to loading 'ALL' the packages still we added explicitly Tests to be loaded" ].	"Can only work for Pharo1.4 and 2.0.
	To be changed when pharo will be managed on SmalltalkHub"
	spec
		for: #squeakCommon
		do: [ spec package: 'Collections-Support' with: [ spec repository: 'http://ss3.gemtalksystems.com/ss/Pharo20' ] ].	"I did not touch this part because Ido not know it. On Pharo XMLWriter has its own repository"
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
			spec group: 'Tests' with: #('Collections-Tests-Support') ]