package com.example.dockertest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DockerController {
    @GetMapping("/")
    public String home(){
        return "Hello, World";
    }
}
