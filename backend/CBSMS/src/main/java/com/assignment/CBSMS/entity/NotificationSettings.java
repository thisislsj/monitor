package com.assignment.CBSMS.entity;

public class NotificationSettings {

    private boolean byEmail = true;
    private boolean byPhoneCall = true;
    private boolean bySMS = true ;


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