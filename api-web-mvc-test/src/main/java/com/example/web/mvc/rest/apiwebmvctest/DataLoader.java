package com.example.web.mvc.rest.apiwebmvctest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataLoader implements CommandLineRunner {

    @Autowired
    private UsersRepository usersRepository;

    @Override
    public void run(String... args) throws Exception {
        usersRepository.save(new Users("Park", 3_900, "Docker"));
        usersRepository.save(new Users("John", 40_000, "Gold"));
        usersRepository.save(new Users("Joi", 42_000, "SEC"));
        usersRepository.save(new Users("Frank", 32_900, "Docker"));
        usersRepository.save(new Users("Macro", 79_000, "Gold"));
        usersRepository.save(new Users("Maria", 25_000, "SEC"));
    }
}
