package com.github.santiagoangel.openshift.security.authc;

import java.io.IOException;



import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import javax.inject.Named;

import org.picketlink.Identity;
import org.picketlink.Identity.AuthenticationResult;

@Named
public class Controller {

    @Inject
    private Identity identity;

    @Inject
    private FacesContext facesContext;
    
    /*
     * Authenticated users go to welcome page
     */
    public void checkAlreadyLoggedin() throws IOException {
    	 if (this.identity.isLoggedIn()) {
            ExternalContext ec = FacesContext.getCurrentInstance().getExternalContext();
            ec.redirect(ec.getRequestContextPath() + "/welcome.html");
        }
    }


    public void login() {
        AuthenticationResult result = identity.login();
        if (AuthenticationResult.FAILED.equals(result)) {
            facesContext.addMessage(
                    null,
                    new FacesMessage("Authentication was unsuccessful.  Please check your username and password "
                            + "before trying again."));
        }
    }
}