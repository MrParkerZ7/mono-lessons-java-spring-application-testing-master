package com.example.web.mvc.rest.apiwebmvctest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/")
public class UsersController {

    @Autowired
    private UsersRepository usersRepository;

    @GetMapping("/test")
    public String test() {
        return "Test";
    }

    @GetMapping("/all")
    public List<Users> all() {
        return usersRepository.findAll();
    }

}
