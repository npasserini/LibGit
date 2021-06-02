libgit - calls
resetHardTo: target

	^ self
		resetHardTo: target
		checkoutOptions: (LGitCheckoutOptions defaults
			checkoutStrategy: LGitCheckoutStrategyEnum git_checkout_force;
			yourself)