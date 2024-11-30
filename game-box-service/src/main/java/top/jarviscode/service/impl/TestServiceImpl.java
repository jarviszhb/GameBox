package top.jarviscode.service.impl;

import org.springframework.stereotype.Service;
import top.jarviscode.service.TestService;

@Service
public class TestServiceImpl implements TestService {
    
    @Override
    public String getWelcomeMessage() {
        return "Welcome to Game Box!";
    }
} 