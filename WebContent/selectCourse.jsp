<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="cml.util.*" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>选择课程</title>
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
  
    <form action="select" method="post" id="form8">
<%
	JDBCu j=new JDBCu();
	Connection conn = j.getconnection();
	Statement stmt = conn.createStatement();
	ResultSet rs=null;
    String sql = "select Cname,Cid,Ccredit,Cbasic,Tname from course"; 
    rs = stmt.executeQuery(sql);
     %>
     
     <table cellspacing="3" cellpadding="3" border="1" align="center" width="700">
       <tr>
         <td colspan="6" align="center">
           供选修课程列表
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
         <td align="center" width="150">
            选修
         </td>
       </tr>
     <%
      while(rs.next()){
              String name = rs.getString("Cname");
              String id = rs.getString("Cid");
              String credit = rs.getString("Ccredit");
              String basic = rs.getString("Cbasic");
              String tName = rs.getString("Tname");
         %>
         <tr>
           <td align="center"> 
           <%=id %>
           </td>
           <td align="center">
           <%=name %>
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
           <td align="center"> 
           <input type="checkbox" name="selected" value="<%=id%>"/>
           </td>
         </tr>
     <%
      }
     	rs.close();
		stmt.close();
		conn.close();
     %>
     <tr>
     <td colspan="6" align="center">
     </td>
     </tr>
     <tr>
     <td colspan="3" align="center">
       <input type="submit" name="submit" value="提交"/>
     </td>
     <td colspan="3" align="center">
       <input type="reset" name="reset" value="清空"/>
     </td>
     </tr>
     <tr>
       <td colspan="6" align="center"><a href="selected.jsp">已选课程</a></td>
     </tr>
     </table>
    </form>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>