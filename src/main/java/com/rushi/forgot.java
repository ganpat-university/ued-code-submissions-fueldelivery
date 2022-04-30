package com.rushi;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class forgot{
	public static void sendmail(String recepient) {
		System.out.println("prepareing message sent");
		Properties pro = new Properties();
		pro.put("mail.smtp.auth", "true");
		pro.put("mail.smtp.starttls.enable", "true");
		pro.put("mail.smtp.host", "smtp.gmail.com");
		pro.put("mail.smtp.port", "587");
		String myaccount="fueldelivery9@gmail.com";
		String password="Rushi@1978";
		
		Session session = Session.getInstance(pro,new Authenticator() {
		 @Override
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(myaccount, password);
		 }
			});
		Message message =preparedMessage(session,myaccount,recepient);
		try {
			Transport.send(message);
			System.out.println("message sent");
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	private static Message preparedMessage(Session session, String myaccount, String recepient) {
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(myaccount));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
			message.setSubject("Forgot Password");
			message.setText("Hey");
			return message; 
			
			
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}	
}
