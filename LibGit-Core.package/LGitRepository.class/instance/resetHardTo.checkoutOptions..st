libgit - calls
resetHardTo: target checkoutOptions: options

	^ self
		resetTo: target
		resetType: LGitResetTypeEnum git_reset_hard
		checkoutOptions: options