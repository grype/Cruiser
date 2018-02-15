system startup
deploymentReadOnlySettingsOn: aBuilder
	<deploymentsettings>
	(aBuilder deploymentGroup: #readOnly)
		label: 'Make the image read only';
		description: 'Deactivate all the reads and writes on the disk';
		order: 100;
		parent: #cleaning.
	(aBuilder deployment: #readOnlyCleaning)
		label: 'Clean the image folder';
		description: 'Remove the .changes, .sources, and the pharo-local folder';
		actionTarget: [ CRDeploymentSettings ];
		actionTargetSelector: #cleanDeploymentFolder;
		order: 999;
		parent: #readOnly