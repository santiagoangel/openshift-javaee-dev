package com.github.santiagoangel.openshift.security;

import javax.enterprise.event.Observes;

import org.picketlink.event.SecurityConfigurationEvent;

public class HTTPStarter {
	
	public void onInit(@Observes SecurityConfigurationEvent event) {
		event.getBuilder().http().allPaths();
	}

}
