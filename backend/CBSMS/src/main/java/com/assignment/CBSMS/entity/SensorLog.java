package com.assignment.CBSMS.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;

public class SensorLog {

    @Id private String Id;

    private String sensorCode;
    private String dataValue;
    private Date date;
    private boolean alerted = false;


    public String getData(){
        return dataValue;
    }

    public Date getDate(){
        return date;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getSensorCode() {
        return sensorCode;
    }

    public void setSensorCode(String sensorCode) {
        this.sensorCode = sensorCode;
    }

    public String getDataValue() {
        return dataValue;
    }

    public boolean isAlerted() {
        return alerted;
    }

    public void setAlerted(boolean alerted) {
        this.alerted = alerted;
    }

    public void setDataValue(String data){
        this.dataValue = data;
    }

    public void setDate(Date date){
        this.date = date;
    }
    
}
