package com.acme.bnb.controlers;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AngularController implements ErrorController  {

    @RequestMapping(method = {RequestMethod.OPTIONS, RequestMethod.GET}, path = {"/home/**", "/property/**", "/profile/**", "/admin/**", "/empty/**", "/"})
    public String forwardAngularPaths() {
        return "forward:/index.html";
    }
}
