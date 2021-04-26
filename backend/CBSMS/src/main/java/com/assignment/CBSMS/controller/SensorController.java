package com.assignment.CBSMS.controller;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;
import com.assignment.CBSMS.service.SensorService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
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

	@CrossOrigin(origins = "http://localhost:56132")
    @GetMapping(value = "")
    public List<Sensor> getAll(){
        return sensorService.findAll();
    }

	@CrossOrigin(origins = "http://localhost:56132")
    @PostMapping(value = "")
    public Sensor newSensor(@RequestBody Sensor newSensor){
        return sensorService.saveOrUpdate(newSensor);
    }

    @CrossOrigin(origins = "http://localhost:56132")
    @GetMapping(value = "/{id}")
    public Sensor getById(@PathVariable(value = "id") String id){
        return sensorService.findById(id);
    }

    
}
