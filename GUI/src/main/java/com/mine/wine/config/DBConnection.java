package com.mine.wine.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection
{
		public static Connection getConnection() throws SQLException, ClassNotFoundException
		{
				Connection connection = DriverManager.getConnection("jdbc:mysql://mineandwine.ciawfplyb5og.us-west-1.rds.amazonaws.com:3306/mineandwine","mineandwine","mineandwine");

				return connection;
		}

}
