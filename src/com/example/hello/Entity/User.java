package com.example.hello.Entity;

/**
 * Created by Lenovo on 2017/5/25.
 */
public class User {
    private String name;
    private int age;

    public User(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
