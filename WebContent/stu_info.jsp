<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="cml.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息</title>
</head>
<body>
   <table id="head" cellspacing="3" cellpadding="3" align="center" border="2">
    <tr>
       <td colspan="5" align="center">
          <img src="/FinalProject/images/himg.jpg" align="middle" width="750" height="175"/>
       </td>
    </tr>
    <tr>
       <td align="center">
          <a href="stu_info.jsp">个人信息</a>
       </td>
       <td align="center">
          <a href="alterpassword.jsp">修改密码</a>
       </td>
       <td align="center">
          <a href="queryscore.jsp">成绩查询</a>
       </td>
       <td align="center">
          <a href="selectCourse.jsp">课程选择</a>
       </td>
       <td align="center">
          <a href="/FinalProject/index.jsp">退出</a>
       </td>
    </tr>
    </table>
        <br>
      <table cellspacing="3" cellpadding="3" align="left" border="2">
      <tr>
       <td align="center">
       <%= session.getAttribute("username") %>，欢迎光临本站！        
       </td>
    </tr>
  </table>
      <br>
    <br>
    <br>
    
    
    <% 
    JDBCu j=new JDBCu();
	Connection conn = j.getconnection();
	Statement stmt = conn.createStatement();
	ResultSet rs=null;
    String username = (String)session.getAttribute("username");
    
      String name = null;
      String id = null;
      String age1 = null;
      String sex = null;
      String address = null;
      String depart = null;
		  String sql = "select name,id,age,sex,address,depart from student where username='"+username+"'";
		  rs = stmt.executeQuery(sql);
			if(rs.next()) {
				name = rs.getString("name");
				id = rs.getString("id");
				age1 = rs.getString("age");
				sex = rs.getString("sex");
				address = rs.getString("address");
				depart = rs.getString("depart");
			}
			rs.close();
			stmt.close();
			conn.close();
		
     %>
     <table cellspacing="2" cellpadding="2" align="center" border="1" width="500" height="150">
       <tr>
          <td align="right" width="50">
          姓名：
          </td>
          <td align="center" width="200">
          <%=name %>
          </td>
          <td align="right" width="50">
          性别：
          </td>
          <td align="center" width="200">
          <%
          if(sex.equals("m"))
    		  out.print('男');
    		  else
    		  out.print('女');
          %>
          </td>
       </tr>
       <tr>
          <td align="right">
          学号：
          </td>
          <td align="center">
          <%=id %>
          </td>
          <td align="right">
          年龄：
          </td>
          <td align="center">
          <%=age1 %>
          </td>
       </tr>
       <tr>
          <td align="right">
          专业：
          </td>
          <td align="center">
          <%=depart %>
          </td>
          <td align="right">
          地址：
          </td>
          <td align="center">
          <%=address %>
          </td>
       </tr>
     </table>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>