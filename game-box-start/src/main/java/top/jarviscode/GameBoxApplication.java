package top.jarviscode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "top.jarviscode")
public class GameBoxApplication {
    public static void main(String[] args) {
        SpringApplication.run(GameBoxApplication.class, args);
    }
} 