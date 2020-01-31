package cml.bean;

import java.sql.*;
import cml.util.*;

public class UserBean {

	public boolean valid(String username, String password, String limit) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isValid=false;
		  if(limit.equals("student"))
		  {
			String sql = "select * from student where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				isValid = true;
				}
		  } else{
			  String sql = "select * from teacher where username='"+username+"' and password='"+password+"'";
			  rs = stmt.executeQuery(sql);
				if(rs.next()) {
					isValid = true;
				}
		  }
		  	
			rs.close();
			stmt.close();
			conn.close();
			return isValid;
		}
		
	
	public boolean isExist2(String studentId) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExist = false ;
			String sql = "select * from student where id = '"+studentId+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				isExist = true;
			}			
			rs.close();
			stmt.close();
			conn.close();
			return isExist;
		}	
		
	
	public boolean isExist3(String courseId) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExist = false ;
			String sql = "select * from course where Cid = '"+courseId+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()){
				isExist = true;
			}
			
			rs.close();
			stmt.close();
			conn.close();	
		return isExist;
	}
	
	public boolean isExist(String username) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExist = false;
			String sql = "select * from student where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				isExist = true;
			}
			rs.close();
			stmt.close();
			conn.close();
		return isExist;
	}
	
	public boolean isExist_tea(String username) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExist = false;

			String sql = "select * from teacher where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				isExist = true;
			}
			rs.close();
			stmt.close();
			conn.close();
	
		return isExist;
	}
	
	public boolean isExit_SC(String courseId,String studentId) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
		ResultSet rs=null;
		boolean isExist = false;
			String sql = "select * from SC where Cid='"+courseId+"'and Sid='"+studentId+"'";
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				isExist = true;
			}
			rs.close();
			stmt.close();
			conn.close();
		
		return isExist;
	}
	
	
	public void addStudent(String username, String password, String name, String depart, String age, String address,String id , String sex) throws SQLException  {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		PreparedStatement psta=null;		
			String sql ="insert into student(username,password,name,depart,age,address,id,sex) values('"+username+"','"+password+"','"+name+"','"+depart+"','"+age+"','"+address+"','"+id+"','"+sex+"')";
			psta=conn.prepareStatement(sql);
			psta.executeUpdate();
			psta.close();
			conn.close();

	}
	
	public void addTeacher(String username, String password, String name, String id, String age, String address,String profession, String sex) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		PreparedStatement psta=null;		
			String sql = "insert into teacher(username,password,name,id,profession,address,age,sex) values('"+username+"','"+password+"','"+name+"','"+id+"','"+profession+"','"+address+"','"+age+"','"+sex+"')";
			psta=conn.prepareStatement(sql);
			psta.executeUpdate();
			psta.close();
			conn.close();

	}
	
	public void alterPassword1(String password,String username) throws SQLException{
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		Statement stmt = conn.createStatement();
			String sql = "update student set password='"+password+"' where username='"+username+"'";
			stmt.executeUpdate(sql);
			stmt.close();
			conn.close();

	}
	
	public void alterPassword2(String password,String username) throws SQLException {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		PreparedStatement psta=null;		
			String sql = "update teacher set password='"+password+"' where username='"+username+"'";
			psta=conn.prepareStatement(sql);
			psta.executeUpdate();
			psta.close();
			conn.close();
	}
	
	public void addCourse(String courseId ,String courseName,String courseScore,String teacherName,String basic ) throws SQLException  {	
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		PreparedStatement psta=null;		
			String sql = "insert into course(Cid,Cname,Ccredit,Tname,Cbasic) values('"+courseId+"','"+courseName+"','"+courseScore+"','"+teacherName+"','"+basic+"')";
			psta=conn.prepareStatement(sql);
			psta.executeUpdate();
			psta.close();
			conn.close();
	}
	public void addScore(String courseId ,String score ,String studentId) throws SQLException  {
		JDBCu j=new JDBCu();
		Connection conn = j.getconnection();
		PreparedStatement psta=null;		
			String sql = "insert into score(Sid,Cid,scoreNum) values('"+studentId+"','"+courseId+"','"+score+"')";
			psta=conn.prepareStatement(sql);
			psta.executeUpdate();
			psta.close();
			conn.close();
}
	
	public String selectId(String name) throws SQLException {
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
