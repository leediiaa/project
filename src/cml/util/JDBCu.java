package cml.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCu {
	
	static {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}
   public Connection getconnection() throws SQLException {
	   String url = "jdbc:sqlserver://localhost:1433;DatabaseName=master";
	   Connection conn = DriverManager.getConnection(url, "sa", "Cml199766");
	   return conn;
		
   }
}
