versions
version290: spec 
	<version: '2.9.0'>

	spec for: #'common' do: [ 
		spec
			baseline: 'XMLWriter' with: [ 
				spec 
					className: 'BaselineOfXMLWriter';
					repository: 'github://pharo-contributions/XML-XMLWriter:2.9.0/src' ]]
