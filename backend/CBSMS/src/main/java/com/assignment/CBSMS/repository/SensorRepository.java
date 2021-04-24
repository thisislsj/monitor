package com.assignment.CBSMS.repository;

import java.util.List;

import com.assignment.CBSMS.entity.Sensor;

import org.springframework.data.mongodb.repository.Aggregation;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource  // (collectionResourceRel = "sensor", path = "sensor")
public interface SensorRepository extends MongoRepository<Sensor, String> {

    List<Sensor> findByName(String name);

    @Aggregation("{ '$lookup': { 'from': 'sensorlogs', 'localField': '$sensorCode', 'foreignField': '$sensorCode', 'as': 'logs'} }")
    List<Sensor> finaAllAnd();

    Sensor findFirstBySensorCode(String sensorCode);

    Sensor findFirstById(String id);
    
}
