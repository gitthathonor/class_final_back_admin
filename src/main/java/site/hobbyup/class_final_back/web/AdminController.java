package site.hobbyup.class_final_back.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("/")
    public String main() {
        return "/main";
    }
}
