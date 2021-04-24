package com.assignment.CBSMS.service;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;

public interface SensorService {

    List<Sensor> findAll();

    List<Sensor> findAllWithLogs();

    Sensor saveOrUpdate(Sensor sensor);

    Sensor findById(String id);

    Sensor findBySensorCode(String sensorCode);
    
}
