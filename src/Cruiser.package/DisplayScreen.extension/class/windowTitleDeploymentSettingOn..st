*Cruiser
windowTitleDeploymentSettingOn: aBuilder
	<deploymentsettings>
	(aBuilder deployment: #windowTitle)
		label: 'Window title';
		description: 'The title of the main window that will be displayed';
		actionTarget: self;
		actionTargetSelector: #setWindowTitle:;
		order: 100;
		orderGroup: #configuring;
		with: [ (aBuilder deploymentAttribute: #windowTitleAttribute)
				type: #String;
				default: #projectName;
				description: 'The title';
				label: 'Title' ]