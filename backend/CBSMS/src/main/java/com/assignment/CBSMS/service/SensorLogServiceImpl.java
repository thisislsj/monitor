package com.assignment.CBSMS.service;

import java.util.Date;
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

    @Override
    public SensorLog findFirstByDate(Date date) {
        return sensorLogRepository.findFirstByDate(date);
    }

    @Override
    public List<SensorLog> findAllBySensorCode(String sensorCode) {
        return sensorLogRepository.findAllBySensorCode(sensorCode);
    }
    
    
}
