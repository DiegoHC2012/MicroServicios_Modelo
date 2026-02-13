package coupon.couponservice;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import modules.Coupon.dto.CouponDto;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


@RestController
@RequestMapping("/coupons")
public class CouponController {
    @GetMapping("path")
    public String getMethodName(@RequestParam String param) {
        return new String();
    }
    
    @GetMapping("/getCoupon/{code}")
    public CouponDto getCoupon(@PathVariable String code) {
        return CouponDto.builder()
                //.id(UUID.randomUUID().toString())
                .code(code)
                .description("10% off on all items")
                .discount(10.0)
                .createdAt(java.time.LocalDateTime.now())
                .build();
    }
    
}
