package com.assignment.CBSMS.entity;

import org.springframework.data.annotation.Id;

public class NotificationSettings {

    @Id private String id;
    private String sensorCode;
    private boolean byEmail;
    private boolean byPhoneCall;
    private boolean bySMS;


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

    public boolean isByEmail() {
        return byEmail;
    }

    public void setByEmail(boolean byEmail) {
        this.byEmail = byEmail;
    }

    public boolean isByPhoneCall() {
        return byPhoneCall;
    }

    public void setByPhoneCall(boolean byPhoneCall) {
        this.byPhoneCall = byPhoneCall;
    }

    public boolean isBySMS() {
        return bySMS;
    }
    
    public void setBySMS(boolean bySMS) {
        this.bySMS = bySMS;
    }



}