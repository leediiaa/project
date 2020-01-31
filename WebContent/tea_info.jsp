<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"  import="cml.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>教师信息</title>
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
          <a href="tea_info.jsp">个人信息</a>
       </td>
       <td align="center">
          <a href="alter_password.jsp">修改密码</a>
       </td>
       <td align="center">
          <a href="set_score.jsp">成绩录入</a>
       </td>
       <td align="center">
          <a href="set_course.jsp">课程设置</a>
       </td>
       <td align="center">
          <a href="/FinalProject/index.jsp">退出</a>
       </td>
    </tr>
    </table>
        <br>
      <table cellspacing="3" cellpadding="3" border="2">
      <tr>
       <td align="center">
          <%=session.getAttribute("username") %>，欢迎您！
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
      String age = null;
      String sex = null;
      String address = null;
      String profession = null;
      
		  String sql = "select name,id,age,sex,address,profession from teacher where username='"+username+"'";
		  rs = stmt.executeQuery(sql);
			if(rs.next()) {
				name = rs.getString("name");
				id = rs.getString("id");
				age =rs.getString("age");
				sex =rs.getString("sex");
				address =rs.getString("address");
				profession =rs.getString("profession");
			}
			rs.close();
			stmt.close();
			conn.close();
     %>
     <table cellspacing="2" cellpadding="2" align="center" border="1" width="500" height="150">
       <tr>
          <td align="right" width="70">
          姓名：
          </td>
          <td align="center" width="180">
          <%=name %>
          </td>
          <td align="right" width="70">
          性别：
          </td>
          <td align="center" width="180">
          <%
          if(sex.equals("m"))
        		  out.print('男');
        		  else
        		  out.print('女'); %>
          </td>
       </tr>
       <tr>
          <td align="right">
          教师号：
          </td>
          <td align="center">
          <%=id %>
          </td>
          <td align="right">
          年龄：
          </td>
          <td align="center">
          <%=age%>
          </td>
       </tr>
       <tr>
          <td align="right">
          职称：
          </td>
          <td align="center">
          <%=profession %>
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