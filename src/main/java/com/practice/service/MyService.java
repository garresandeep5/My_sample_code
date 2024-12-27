package com.practice.service;

import org.springframework.stereotype.Service;

@Service
public class MyService implements ApplicationService {

  @Override
  public String greet() {
    return "Hello";
  }
}
