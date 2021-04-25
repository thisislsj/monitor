package com.assignment.CBSMS.service;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;
import com.assignment.CBSMS.repository.SensorRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SensorServiceImpl implements SensorService {

    @Autowired
    private SensorRepository sensorRepository;

    @Override
    public List<Sensor> findAll() {
        return sensorRepository.findAll();
    }

    @Override
    public List<Sensor> findAllWithLogs() {
        return sensorRepository.finaAllAnd();
    }

    @Override
    public Sensor saveOrUpdate(Sensor sensor) {
        return sensorRepository.save(sensor);
    }

    @Override
    public Sensor findById(String id) {

        return sensorRepository.findFirstById(id);

    }

    @Override
    public Sensor findBySensorCode(String sensorCode) {
        return sensorRepository.findFirstBySensorCode(sensorCode);
    }
    
}
