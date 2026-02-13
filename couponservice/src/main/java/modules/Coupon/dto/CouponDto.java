package modules.Coupon.dto;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CouponDto {
    private String id;
    private String code;
    private String description;
    private double discount;
    private LocalDateTime createdAt;
}
