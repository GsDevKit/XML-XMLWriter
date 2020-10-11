symbolic
dev: spec
	<version: #'dev'>

	spec for: #'common' do: [ 
		spec
			baseline: 'XMLWriter' with: [ 
				spec 
					className: 'BaselineOfXMLWriter';
					repository: 'github://pharo-contributions/XML-XMLWriter:master/src' ]]
