outdated - baselines
baseline250: spec
	<version: '2.5.0-baseline'>

	"this is the new default baseline others inherit from"
	spec
		for: #common
		do: [ 
			spec
				blessing: #baseline;
				description: 'new standard baseline';
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
				group: 'Tests' with: #('XML-Writer-Tests') ].

	"load gemstone compatibility methods"
	spec
		for: #'gemstone'
		do: [
			spec
				package: 'XML-Writer-Core'
				with: [ spec includes: 'XML-Writer-GemstoneCompatibility' ].
			spec
				package: 'XML-Writer-GemstoneCompatibility'
				with: [ spec requires: 'XML-Writer-Core' ].].