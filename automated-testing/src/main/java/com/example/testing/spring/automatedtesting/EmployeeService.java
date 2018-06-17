package com.example.testing.spring.automatedtesting;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EmployeeService {

    Employee getEmployeeByName(String name);

    List<Employee> getAllEmployees();
}
