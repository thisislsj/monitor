package com.assignment.CBSMS.entity;

import java.util.Date;

import org.springframework.data.annotation.Id;

public class SensorLog {

    @Id private String id;

    private String sensorCode;
    private Integer dataValue;

    // @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date date;
    
    private boolean alerted = false;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
