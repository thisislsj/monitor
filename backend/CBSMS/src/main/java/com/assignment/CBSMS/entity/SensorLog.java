package com.assignment.CBSMS.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;

public class SensorLog {

    @Id private String Id;

    private String sensorCode;
    private Integer dataValue;
    private Date date;
    private boolean alerted = false;

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

    public boolean isAlerted() {
        return alerted;
    }

    public Integer getDataValue() {
        return dataValue;
    }

    public void setDataValue(Integer dataValue) {
        this.dataValue = dataValue;
    }

    public Date getDate() {
        return date;
    }

    public void setAlerted(boolean alerted) {
        this.alerted = alerted;
    }

    public void setDate(Date date){
        this.date = date;
    }
    
}
