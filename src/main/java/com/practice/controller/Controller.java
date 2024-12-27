package com.practice.controller;

import com.practice.service.ApplicationService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class Controller {

  private final ApplicationService applicationService;

  public Controller(ApplicationService applicationService) {
    this.applicationService = applicationService;
  }

  @GetMapping("/greet")
  public String getMessage() {
    return applicationService.greet();
  }
}
