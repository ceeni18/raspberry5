package com.mine.wine.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mine.wine.model.Email;
import com.mine.wine.model.User;
import com.twilio.sdk.TwilioRestClient;
import com.twilio.sdk.TwilioRestException;
import com.twilio.sdk.resource.factory.MessageFactory;
import com.twilio.sdk.resource.instance.Message;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

@Controller
@RequestMapping("/")
public class WineController {
	
	public static final String ACCOUNT_SID = "";
	public static final String AUTH_TOKEN = "";
	Message message = null;

		@RequestMapping(value = "/home", method = RequestMethod.GET)
		public String getMovie(ModelMap model) {
	 
			return "map";
	 
		}
		@RequestMapping(value="/bookatour", method=RequestMethod.POST)
		public String register(User user, Model m) 
		{
			sendMail(user.getEmail(), user.getDate1());
			

			   return "index";
		}	

		
		public void sendMail(String email, String date) {
			try{
				ApplicationContext mailContext = 
			            new ClassPathXmlApplicationContext("Spring-Mail.xml");
				String[] day = date.split("00");
				
				String body = "Your tour is booked for "+ day[0];
				
				Email mm = (Email) mailContext.getBean("Email");
				mm.sendMail("webui.cmpe280@gmail.com",
						email,
						   "Wine Tour Booked Successfully!", 
						   body);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		public void sendMessage(String phoneno){
			TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
		    
		    List<NameValuePair> params = new ArrayList<NameValuePair>();
		    params.add(new BasicNameValuePair("Body", "message"));
		    params.add(new BasicNameValuePair("To", "+1"+phoneno));
		    params.add(new BasicNameValuePair("From", "+19714074127"));
		 
		    MessageFactory messageFactory = client.getAccount().getMessageFactory();
		    
			try {
				message = messageFactory.create(params);
			} catch (TwilioRestException e) {
				e.printStackTrace();
			}
		}
		
	 
	}
