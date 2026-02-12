package coupon.couponservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/hello-world")
    public String helloWorld() {
        return "Hello World from Coupon Service!";
    }

}
