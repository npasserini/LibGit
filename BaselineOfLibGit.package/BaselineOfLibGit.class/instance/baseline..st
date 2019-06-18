baseline
baseline: spec
  <baseline>
  spec
    for: #(common)
    do: [ 
      spec
    	  package: 'LibGit-FileSystem' with: [ spec requires: 'LibGit-Core' ];    
		  package: 'LibGit-Tests' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-GT' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Patches' with: [ spec requires: 'LibGit-Core' ];
        package: 'LibGit-Core'.
      spec
        group: 'default'
        with: #('LibGit-Core' 'LibGit-FileSystem').
		spec
			group: 'development'
			with: #('default' 'LibGit-Tests' 'LibGit-Patches' 'LibGit-GT').
		spec
			group: 'tests'
			with: #('LibGit-Tests').

		spec
			for: #'pharo7.x'
			do: [ spec
						package: 'LibGit-Compatibility-Pharo7';
						package: 'LibGit-Core' with: [spec requires: 'LibGit-Compatibility-Pharo7' ]].

		spec postLoadDoIt: #postLoadActions ]
