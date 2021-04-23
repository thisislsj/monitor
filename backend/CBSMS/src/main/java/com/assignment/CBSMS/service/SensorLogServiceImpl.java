package com.assignment.CBSMS.service;

import java.util.List;
import java.util.Optional;

import com.assignment.CBSMS.entity.SensorLog;
import com.assignment.CBSMS.repository.SensorLogRepository;

import org.springframework.beans.factory.annotation.Autowired;

public class SensorLogServiceImpl implements SensorLogService{

    @Autowired
    private SensorLogRepository sensorLogRepository;

    @Override
    public List<SensorLog> findAll() {

        return sensorLogRepository.findAll();
        
    }

    @Override
    public SensorLog updateAlertedById(String id) {
        
        Optional<SensorLog> optionalSensorLog = sensorLogRepository.findById(id);
        SensorLog sensorLog = optionalSensorLog.get();
        sensorLog.setAlerted(true);

        return sensorLogRepository.save(sensorLog);

        
    }

    
    
}
