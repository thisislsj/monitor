package com.assignment.CBSMS.service;

import java.util.List;
import java.util.Optional;

import com.assignment.CBSMS.entity.SensorLog;
import com.assignment.CBSMS.repository.SensorLogRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SensorLogServiceImpl implements SensorLogService{

    @Autowired
    private SensorLogRepository sensorLogRepository;

    @Override
    public List<SensorLog> findAll() {

        return sensorLogRepository.findAll();
        
    }

    @Override
    public SensorLog updateAlertedById(String id,boolean alerted) {
        
        Optional<SensorLog> optionalSensorLog = sensorLogRepository.findById(id);
        SensorLog sensorLog = optionalSensorLog.get();
        sensorLog.setAlerted(alerted);

        return sensorLogRepository.save(sensorLog);

        
    }

    @Override
    public SensorLog saveOrUpdate(SensorLog sensorLog) {
        
        return sensorLogRepository.save(sensorLog);
        
    }

    @Override
    public SensorLog findFirstById(String Id) {

        return sensorLogRepository.findFirstById(Id);
        
    }

    // @Override
    // public SensorLog saveOrUpdateBySensorCode(String sensorCode, SensorLog sensorLog) {

    //     SensorLog sensorLog2 = sensorLogRepository.findBySensorCode(sensorCode);

    //     return null;
    // } 

    
    
}
