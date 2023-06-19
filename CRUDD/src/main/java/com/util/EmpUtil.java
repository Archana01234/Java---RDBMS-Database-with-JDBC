package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class EmpUtil {
	
	
	public static Connection creatConnection()
	{
		Connection connection=null;
	try {
		Class.forName("com.mysql.jdbc.driver");
		connection=DriverManager.getConnection("jdbc:mysql//localhost:3306/stuent","root","");
	} catch (Exception e) {
		e.printStackTrace();
	}
return connection;
}
}
