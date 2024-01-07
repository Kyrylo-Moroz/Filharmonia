package bdbt_project.Filharmonia.controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyErrorController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request) {
        Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

        if (status != null) {
            Integer statusCode = Integer.valueOf(status.toString());

            if (statusCode == 400) {
                return "errors/400";
            } else if (statusCode == 403) {
                return "errors/403";
            } else if (statusCode == 404) {
                return "errors/404";
            } else if (statusCode == 500) {
                return "errors/500";
            } else if (statusCode == 504) {
                return "errors/504";
            } else {
                return "errors/other";
            }
        }
        return "errors/other";
    }
}