package com.assignment.CBSMS.entity;

import org.springframework.data.annotation.Id;

public class Sensor {

    @Id
    private String Id;
    private String sensorCode;
    private String name;
    private String type;
    private Integer threshold;
    private NotificationSettings notificationSettings;
    
    public Sensor(String id, String name, String type) {
        Id = id;
        this.name = name;
        this.type = type;
    }

    public NotificationSettings getNotificationSettings() {
        return notificationSettings;
    }

    public void setNotificationSettings(NotificationSettings notificationSettings) {
        this.notificationSettings = notificationSettings;
    }

    public String getSensorCode() {
        return sensorCode;
    }

    public void setSensorCode(String sensorCode) {
        this.sensorCode = sensorCode;
    }

    public Integer getThreshold() {
        return threshold;
    }

    public void setThreshold(Integer threshold) {
        this.threshold = threshold;
    }

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
   
    
}
