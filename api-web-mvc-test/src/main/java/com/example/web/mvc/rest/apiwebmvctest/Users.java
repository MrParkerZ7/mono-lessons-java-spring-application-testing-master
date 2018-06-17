package com.example.web.mvc.rest.apiwebmvctest;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Users {
    @Id
    @GeneratedValue
    private Integer id;
    private String name;
    private Integer salary;
    private String teamName;

    public Users() {
    }

    public Users(String name, Integer salary, String teamName) {
        this.name = name;
        this.salary = salary;
        this.teamName = teamName;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSalary() {
        return salary;
    }

    public void setSalary(Integer salary) {
        this.salary = salary;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }
}
