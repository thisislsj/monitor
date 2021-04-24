package com.assignment.CBSMS.repository.custom;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;

import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.LookupOperation;

public class CustomSensorRepositoryImpl implements CustomSensorRepository {

    @Override
    public List<Sensor> findAllWithLeftJoin() {
        
        LookupOperation lookupOperation = Aggregation.lookup("sensorlog", "sensorCode", "sensorCode", "sensorlog");

        Aggregation aggregate = Aggregation.newAggregation(lookupOperation);

        // AggregationResults aggregationResults = 

        return null;
    }
    
}
