package com.assignment.CBSMS.util;

import com.assignment.CBSMS.entity.NotificationSettings;
import com.assignment.CBSMS.entity.Sensor;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("singleton")
public class NotificationManager {

    public void NotifyUserFromSensor(Sensor sensor){

        NotificationSettings notificationSettings = sensor.getNotificationSettings();

        if(notificationSettings.isByEmail()){
            // Send Email to the User
            // Through Mailgun
            



        }

        if(notificationSettings.isByPhoneCall()){
            System.out.println("Making Phone Call : Sensor Value is Exceeded than the Threshold");
        }

        if(notificationSettings.isBySMS()){
            System.out.println("Sending SMS : Sensor Value is Exceeded than the Threshold");
        }



    }
    
}
