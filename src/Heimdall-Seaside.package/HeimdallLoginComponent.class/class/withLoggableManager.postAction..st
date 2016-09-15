instance-creation
withLoggableManager: aLoggableManager postAction: aBlock
	^ self new
		loggableManager: aLoggableManager;
		postLoginActionBlock: aBlock;
		yourself