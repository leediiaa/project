<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">      
<title>登录界面</title>
</head>
<body>
<form name="form1" action="login_config" method="post">
<table id="table" align="center" cellspacing="2" cellpadding="2">
 <tr>
   <td colspan="2" align="center"><img src="/FinalProject/images/login.jpg" width="550" height="300"/></td>
 </tr>
 <tr>
   <td></td>
   <td></td>
 </tr>
 <tr>
   <td align="center" colspan="2" width="800"><font face="华文行楷, 黑体, 华文彩云, 华文琥珀, 微软雅黑, 楷体_GB2312" size="+2">请输入用户名和密码，并选择权限：</font></td>
 </tr>
 <tr>
   <td></td>
   <td></td>
 </tr>
 <tr>
   <td align="right"><img src="images/login1_02.gif" />&nbsp;用户名：</td>
   <td><input type="text" name="username" size="15" maxlength="20"/></td>
 </tr>
 <tr>
   <td align="right"><img src="images/login1_04.gif" />&nbsp;密&nbsp;&nbsp;码：</td>
   <td><input type="password" name="password" size="15" maxlength="10"/></td>
 <tr>
   <td align="right"><img src="images/login1_01.gif" />&nbsp;权&nbsp;&nbsp;限：</td>
   <td>教师<input type="radio" name="radio1" value="teacher"/>&nbsp;&nbsp;学生<input type="radio" name="radio1" value="student" checked /></td>
 </tr>
 <tr>
   <td></td>
   <td></td>
 </tr>
 <tr>
   <td  align="right"><input type="submit" value="提交" />&nbsp;&nbsp;</td>
   <td>&nbsp;&nbsp;<input type="reset" value="重置"/></td>
 </tr>
  <tr>
   <td></td>
   <td></td>
 </tr>
 <tr>
   <td  align="right"><a href="stu_register.jsp">学生注册</a>&nbsp;&nbsp;</td>
   <td>&nbsp;&nbsp;<a href="tea_register.jsp">教师注册</a></td>
 </tr>
</table>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</form>

</body>
</html>