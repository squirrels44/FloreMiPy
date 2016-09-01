package com.squirrels.floremipy.control;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
 
    @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", Messages.getString("MainController.1")); //$NON-NLS-1$ //$NON-NLS-2$
        model.addAttribute("message", Messages.getString("MainController.3")); //$NON-NLS-1$ //$NON-NLS-2$
        return "welcomePage"; //$NON-NLS-1$
    }
}
