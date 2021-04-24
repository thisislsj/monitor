package com.assignment.CBSMS.util;

import com.mashape.unirest.http.HttpResponse;

import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

@Service
@PropertySource("classpath:com/assignment/CBSMS/application.properties")
public class MailgunService {

    @Value("${MAILGUN_DOMAIN_NAME}") String mailgunDomainName;
    @Value("${API_KEY}") String apiKey;


    public JsonNode sendEmail(String to, String subject, String message){
        HttpResponse<JsonNode> request = Unirest.post("https://api.mailgun.net/v3/" + mailgunDomainName + "/messages"),
        .basicAuth("api", apiKey)
        .queryString("from", "Excited User <USER@YOURDOMAIN.COM>")
        .queryString("to", to)
        .queryString("subject", subject)
        .queryString("text", message)
        .asJson();
    return request.getBody();

    }


    
}
