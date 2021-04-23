package com.assignment.CBSMS.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;

public class SensorLog {

    @Id private String Id;

    private String sensorCode;
    private String dataValue;
    private Date date;


    public String getData(){
        return dataValue;
    }

    public Date getDate(){
        return date;
    }

    public String getSensorId(){
        return sensorCode;
    }

    public void setDataValue(String data){
        this.dataValue = data;
    }

    public void setDate(Date date){
        this.date = date;
    }

    public void setSensorId(String sensorId){
        this.sensorCode = sensorId;
    }



    
}
