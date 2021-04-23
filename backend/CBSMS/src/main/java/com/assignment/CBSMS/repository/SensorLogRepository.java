package com.assignment.CBSMS.repository;

import java.util.List;

import com.assignment.CBSMS.entity.SensorLog;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;


@RepositoryRestResource // (collectionResourceRel = "sensorlog", path = "sensorlog")
public interface SensorLogRepository extends MongoRepository<SensorLog,String> {

    List<SensorLog> findBySensorId(@Param("sensorCode") String sensorCode);

    List<SensorLog> findAll();

    
}
