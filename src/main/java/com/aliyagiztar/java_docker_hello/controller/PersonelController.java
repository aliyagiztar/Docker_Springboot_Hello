package com.aliyagiztar.java_docker_hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping({"/api/v1" ,"/api/v2"})
public class PersonelController {

    // http://localhost:8081/api/v1/hello
    // http://localhost:8081/api/v1/merhaba

    // http://localhost:8081/api/v2/hello
    // http://localhost:8081/api/v2/merhaba

    @GetMapping({"/hello", "merhaba"})
    public String getDockerHello (){
        return "Selamlar ben Ali Yağız Tar";
    }
}