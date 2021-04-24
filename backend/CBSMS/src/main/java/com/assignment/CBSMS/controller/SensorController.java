package com.assignment.CBSMS.controller;

import com.assignment.CBSMS.entity.Sensor;
import com.assignment.CBSMS.service.SensorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sensors")
public class SensorController {

    @Autowired
    SensorService sensorService;


    @GetMapping(value = "")
    public String getAll(){
        return "Response from sensor logs";
    }

    @PostMapping(value = "")
    public Sensor newSensor(@RequestBody Sensor newSensor){
        return sensorService.saveOrUpdate(newSensor);
    }

    @GetMapping(value = "/{id}")
    public Sensor getById(@PathVariable String id){
        return sensorService.findById(id);
    }

    
}
