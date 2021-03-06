baselines
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [ 
			spec blessing: #'baseline'.	"Prerequisite Projects"
			self orderPreservingDictionaryOn: spec.	"Packages"
			spec
				package: 'XML-Writer-Core'
					with: [ spec requires: #('OrderPreservingDictionary') ];
				package: 'XML-Writer-Tests-Core'
					with: [ spec requires: #('XML-Writer-Core' 'OrderPreservingDictionary Tests') ].	"Groups"
			spec
				group: 'Core' with: #('XML-Writer-Core');
				group: 'Tools' with: #('OrderPreservingDictionary Tools');
				group: 'Tests' with: #('XML-Writer-Tests-Core');
				group: 'all' with: #('Core' 'Tools' 'Tests');
				group: 'default' with: #('all') ].	"load gemstone compatibility methods"
	spec
		for: #'pharo'
		do: [ 
			spec
				package: 'XML-Writer-Tests-Core'
					with: [ spec includes: 'XML-Writer-Tests-Pharo' ];
				package: 'XML-Writer-Tests-Pharo'
					with: [ spec requires: 'XML-Writer-Tests-Core' ] ].
	spec
		for: #'gemstone'
		do: [ 
			spec
				package: 'XML-Writer-Core'
					with: [ spec includes: 'XML-Writer-GemstoneCompatibility' ];
				package: 'XML-Writer-GemstoneCompatibility'
					with: [ spec requires: 'XML-Writer-Core' ];
				package: 'XML-Writer-Tests-Core'
					with: [ spec includes: 'XML-Writer-Tests-GemstoneCompatibility' ];
				package: 'XML-Writer-Tests-GemstoneCompatibility'
					with: [ spec requires: 'XML-Writer-Tests-Core' ] ]