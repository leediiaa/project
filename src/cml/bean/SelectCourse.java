package cml.bean;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import cml.util.*;

public class SelectCourse {
	public boolean isExit(String[] courseId,String studentId) throws ClassNotFoundException, SQLException{
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExit = false;
			for(int i=0;i<courseId.length;i++){
				String id = courseId[i];
				String sql = "select * from SC where Cid='"+id+"' and Sid='"+studentId+"'";
				rs = stmt.executeQuery(sql);
				if(rs.next()){
					isExit = true;
				}
			}
			rs.close();
			stmt.close();
			conn.close();
			return isExit;
	}
	
	public void addCourse(String courseId ,String studentId) throws ClassNotFoundException, SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		@SuppressWarnings("unused")
		ResultSet rs=null;	
		String sql = "insert into SC(Sid,Cid) values('"+studentId+"','"+courseId+"')";
			stmt.execute(sql);
			stmt.close();
			conn.close();
		}
	
	public String selectId(String name) throws ClassNotFoundException, SQLException{
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		String id = null;
			String sql = "select id from student where username='"+name+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				id = rs.getString("id");
			}
			rs.close();
			stmt.close();
			conn.close();
			return id;
	}

}

