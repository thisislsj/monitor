package com.assignment.CBSMS.service;

import java.util.List;

import com.assignment.CBSMS.entity.SensorLog;

public interface SensorLogService {

    List<SensorLog> findAll();

    SensorLog updateAlertedById(String Id); 
    
}
