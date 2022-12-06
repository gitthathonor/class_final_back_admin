package site.hobbyup.class_final_back.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping(value = { "/", "/main" })
    public String main() {
        return "/main";
    }

    @GetMapping("/statistics")
    public String statistics() {
        return "/statistics";
    }

    @GetMapping("/user_info")
    public String userInfo() {
        return "/user_info";
    }

    @GetMapping("/class")
    public String classList() {
        return "/class";
    }

    @GetMapping("/category")
    public String category() {
        return "/category";
    }

    @GetMapping("/order")
    public String order() {
        return "/order";
    }
}
