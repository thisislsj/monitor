package com.assignment.CBSMS.util;

import com.assignment.CBSMS.entity.NotificationSettings;
import com.assignment.CBSMS.entity.Sensor;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.exceptions.UnirestException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("singleton")
public class NotificationManager {

    @Autowired
    MailgunService mailgunService;

    public void NotifyUserFromSensor(Sensor sensor){

        NotificationSettings notificationSettings = sensor.getNotificationSettings();

        // boolean isEmailEnabled = notificationSettings.isByEmail();
        boolean isEmailEnabled = false;

        if(isEmailEnabled){
            
            // Send Email to the User
            // Through Mailgun

            JsonNode nodeReturn;
            try {
                nodeReturn = mailgunService.sendEmail("asjath.husni@gmail.com", "Sensor Alert!", "Sensor Value is Exceeded than the Threshold");
                System.out.println(nodeReturn);
                System.out.println("Email Sent Successfully");
            } catch (UnirestException e) {
                e.printStackTrace();
            }
           


        }

        if(notificationSettings.isByPhoneCall()){
            System.out.println("Making Phone Call : Sensor Value is Exceeded than the Threshold");
        }

        if(notificationSettings.isBySMS()){
            System.out.println("Sending SMS : Sensor Value is Exceeded than the Threshold");
        }



    }
    
}
