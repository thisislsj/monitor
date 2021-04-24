package com.assignment.CBSMS.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    

    @GetMapping(value = "/")
    public String getRoot(){
        return "Rest is Working Fine!!";
    }

    @GetMapping(value = "/data")
    public void handleData(){

        // Handle Incoming Data and Fire Events According to the Threshold Values

    }
}
