<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生密码修改</title>
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
  <br><br><br>
  
    <form action="stu_alter" id="form4" method="post">
    <table cellspacing="3" cellpadding="3" border="2" align="center" >
    <tr>
       <td colSpan="2" align="center">
          修改密码
       </td>
    </tr>
    <tr>
       <td>
          新密码：
       </td>
       <td>
          <input type="password" name="newPassword1" />
       </td>
    </tr>
    <tr>
       <td>
          确认密码：
       </td>
       <td>
          <input type="password" name="newPassword2" />
       </td>
    </tr>
    <tr>
       <td align="center">
          <input type="submit" name="submit" value="提交" >
       </td>
       <td align="center">
          <input type="reset" name="reset" value="重置">
       </td>
    </tr>
    </table>
    </form>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>