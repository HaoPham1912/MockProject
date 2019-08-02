package com.booking.conn;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	
	 public void Database() throws ClassNotFoundException, SQLException
	 {
		 Database db = new Database();
		 Connection connection = db.getMySQLConnection();
		 System.out.println("Connected");
	 }
	
	 public static Connection getMySQLConnection() throws ClassNotFoundException, SQLException{
		 String hostName = "localhost";
		
		 String dbName = "bus";
		 String userName = "root";
		 String password = "123456789";
		
		 return getMySQLConnection(hostName, dbName, userName, password);
	 }
	 
	 public static Connection getMySQLConnection(String hostName, String dbName,
	         String userName, String password) throws SQLException,
	         ClassNotFoundException {
	     
	     Class.forName("com.mysql.jdbc.Driver");
	 
	     String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;
	 
	     Connection conn = DriverManager.getConnection(connectionURL, userName,
	             password);
	     return conn;
	 }
}
