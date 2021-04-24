package com.assignment.CBSMS.repository.custom;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;

public interface CustomSensorRepository {

    List<Sensor> findAllWithLeftJoin();
    
}
