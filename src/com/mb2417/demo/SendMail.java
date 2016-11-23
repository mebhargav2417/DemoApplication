package com.mb2417.demo;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
  

  
public class SendMail  
{  
 public void mail(String from,String pwd,String toRecp,String ccRecp,String bccRecp,String subject,String body) throws Exception{  
	
   
	/*ResourceBundle bundle = ResourceBundle.getBundle("resources.jdbc", Locale.US);
	String from = bundle.getString("from");
	String pwd = bundle.getString("password");*/
	 
	Properties properties = new Properties();
    properties.setProperty("mail.smtp.host", "smtp.zoho.com");
    properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    properties.setProperty("mail.smtp.socketFactory.fallback", "false");
    properties.setProperty("mail.smtp.port", "465");
    properties.setProperty("mail.smtp.socketFactory.port", "465");
    properties.put("mail.smtp.starttls.enable", "true");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.debug", "false");
    properties.put("mail.store.protocol", "pop3");
    properties.put("mail.transport.protocol", "smtp");
    properties.put("mail.debug.auth", "true");
    properties.setProperty( "mail.pop3.socketFactory.fallback", "false");
	
    Session session = Session.getInstance(properties,new javax.mail.Authenticator() 
    {   @Override
        protected PasswordAuthentication getPasswordAuthentication() 
        {   return new PasswordAuthentication(from,pwd);
        }
    });
    try 
    {   
    	MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));
        message.setRecipients(MimeMessage.RecipientType.TO,InternetAddress.parse(toRecp));
        message.setRecipients(MimeMessage.RecipientType.CC,InternetAddress.parse(ccRecp));
        message.setRecipients(MimeMessage.RecipientType.BCC,InternetAddress.parse(bccRecp));
        message.setSubject(subject);
        message.setText(body,"UTF-8", "html");
        Transport.send(message);	
    } 
    catch (MessagingException e) 
    {   e.printStackTrace();
    }
   }  
}  