<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="cml.bean.UserBean" import="cml.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
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
    <br>
    
    <%
    String name = (String)session.getAttribute("username");
    JDBCu j=new JDBCu();
	Connection conn = j.getconnection();
	Statement stmt = conn.createStatement();
	ResultSet rs=null;
    String sql = "select b.Cname name, b.Cbasic basic, b.Ccredit credit, a.scoreNum num  from score a,course b where Sid=(select id from student where username='"+name+"') and a.Cid=b.Cid"; 
    rs = stmt.executeQuery(sql);
     %>
     
     <table cellspacing="6" cellpadding="63" border="2" align="center" width="600">
       <tr>
         <td align="center" width="200">
           课程名称
         </td>
         <td align="center" width="200">
           课程性质
         </td>
         <td align="center" width="100">
           课程学分
         </td>
         <td align="center" width="100">
           课程成绩
         </td>
       </tr>
     <%
      while(rs.next()){
         %>
         <tr>
           <td align="center">
              <% 
              String name1 = rs.getString("name");
              String basic = rs.getString("basic");
              String credit = rs.getString("credit");
              String num = rs.getString("num");
               %>
               <%=name1 %>
           </td>
           <td align="center">
           <%=basic %>
           </td>
           <td align="center">
           <%=credit %>
           </td>
           <td align="center">
           <%=num %>
           </td>
         </tr>
		<%
		}
   		rs.close();
		stmt.close();
		conn.close();  
		%>
     </table>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>