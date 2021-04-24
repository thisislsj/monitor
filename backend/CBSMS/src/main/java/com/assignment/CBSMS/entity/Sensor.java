package com.assignment.CBSMS.entity;

import org.springframework.data.annotation.Id;

public class Sensor {

    @Id
    private String id;
    private String sensorCode;
    private String name;
    private String type;
    private Integer threshold;
    private NotificationSettings notificationSettings;
    
    
    public NotificationSettings getNotificationSettings() {
        return notificationSettings;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
