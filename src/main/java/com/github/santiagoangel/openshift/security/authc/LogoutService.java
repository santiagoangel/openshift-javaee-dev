package com.github.santiagoangel.openshift.security.authc;

import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;

import org.picketlink.Identity;

@Path("/logout")
public class LogoutService {

	@Inject
	private Identity identity;

	@POST
	public void logout() {
		if (this.identity.isLoggedIn()) {
			this.identity.logout();
		}
	}

}
