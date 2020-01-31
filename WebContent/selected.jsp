<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="cml.bean.UserBean" 
import="cml.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>已选课程</title>
</head>
<body>
 <%
    request.setCharacterEncoding("UTF-8");
    String studentId = (String)session.getAttribute("studentId");
    JDBCu j=new JDBCu();
	Connection conn = j.getconnection();
	Statement stmt = conn.createStatement();
	ResultSet rs=null;
    String username = (String)session.getAttribute("username");
     String sql = "select Cid,Cname,Ccredit,Tname,Cbasic from course where Cid IN(select Cid from SC where Sid='"+studentId+"')";
     rs = stmt.executeQuery(sql);
       %>
      <form action="selectCourse.jsp"> 
       <table cellspacing="3" cellpadding="3" border="1" align="center" width="700">
       <tr>
          <td colspan="5" align="center">
             已选课程
          </td>
       </tr>
       <tr>
         <td align="center" width="100">
           课程号
         </td>
         <td align="center" width="200">
           课程名称
         </td>
         <td align="center" width="100">
           课程学分
         </td>
         <td align="center" width="150">
           课程性质
         </td>
         <td align="center" width="150">
           任课教师 
         </td>
       </tr>
       <% 
         while(rs.next()){
           String id = rs.getString("Cid");
           String Cname = rs.getString("Cname");
           String credit = rs.getString("Ccredit");
           String tName = rs.getString("Tname");
           String basic = rs.getString("Cbasic");
           
       %>
       <tr>
           <td align="center"> 
           <%=id %>
           </td>
           <td align="center">
           <%=Cname %>
           </td>
           <td align="center">
           <%=credit %>
           </td>
           <td align="center">
           <%=basic %>
           </td>
           <td align="center">
           <%=tName %>
           </td>
         </tr>
        <%
         }
       	rs.close();
		stmt.close();
		conn.close();
       %>
     <tr>
       <td colspan="5" align="center">
         <input type="submit" value="继续选课"/>
       </td>
       </tr>
     </table>
     </form>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>