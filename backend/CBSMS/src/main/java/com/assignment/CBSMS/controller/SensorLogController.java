package com.assignment.CBSMS.controller;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;
import com.assignment.CBSMS.entity.SensorLog;
import com.assignment.CBSMS.service.SensorLogService;
import com.assignment.CBSMS.service.SensorService;
import com.assignment.CBSMS.util.NotificationManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/sensorlogs")
public class SensorLogController {

    @Autowired
    SensorLogService sensorLogService;

    @Autowired
    SensorService sensorService;

    @Autowired
    NotificationManager notificationManager;

    @GetMapping(value = "")
    public List<SensorLog> getAllLogs(){

        return sensorLogService.findAll();

    }

    @PostMapping(value = "")
    public SensorLog saveOne(@RequestBody SensorLog sensorLog){

        return sensorLogService.saveOrUpdate(sensorLog);

    }

    @PutMapping(value = "/updateCheck/{id}")
    public SensorLog setAlertedValue(@PathVariable String Id){

        SensorLog sensorLog = sensorLogService.findFirstById(Id);
        Sensor sensor = sensorService.findBySensorCode(sensorLog.getSensorCode());


        //check if the value is violated the threadshold and set alerted as true
        // Only valid for Temparature Sensors
        boolean alerted = false;
        if(sensor.getThreshold() < sensorLog.getDataValue()) {
            
            alerted = true;
            notificationManager.NotifyUserFromSensor(sensor);
        
        };
        

        return sensorLogService.updateAlertedById(Id, alerted);
        
    }

    
}
