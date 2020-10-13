prerequisites
orderPreservingDictionaryOn: spec

	spec
		baseline: 'OrderPreservingDictionary'
      with: [ 
			spec
				loads: #('Core');
				repository: 'github://GsDevKit/OrderPreservingDictionary:gemstone/filetree' ]. 
				
	spec 
		project: 'OrderPreservingDictionary Tests' copyFrom: 'OrderPreservingDictionary' with: [ spec loads: #('Tests') ];			
		project: 'OrderPreservingDictionary Tools' copyFrom: 'OrderPreservingDictionary' with: [ spec loads: #('Tools') ]
