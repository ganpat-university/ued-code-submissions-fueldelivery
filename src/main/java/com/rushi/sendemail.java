package com.rushi;

import javax.servlet.annotation.WebServlet;

@WebServlet("/forgot")
public class sendemail{
	public static void main(String[] args) throws Exception {
		System.out.println("in");
		forgot.sendmail("rushigokani124@gmail.com");
		System.out.println("out");

	}
	
}