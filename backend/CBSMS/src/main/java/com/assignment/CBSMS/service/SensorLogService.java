package com.assignment.CBSMS.service;

import java.util.Date;
import java.util.List;

import com.assignment.CBSMS.entity.SensorLog;

public interface SensorLogService {

    List<SensorLog> findAll();

    SensorLog updateAlertedById(String Id, boolean alerted);
    
    SensorLog saveOrUpdate(SensorLog sensorLog);

    SensorLog findFirstById(String Id);

    SensorLog findFirstByDate(Date date);

    // SensorLog saveOrUpdateBySensorCode(String sensorCode, SensorLog sensorLog);
    
}
