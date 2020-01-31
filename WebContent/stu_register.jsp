<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生注册窗口</title>
</head>
<body>
<form name="form2" action="stu_reg_config" method="post">
<table border="1" align="center" cellspacing="5" cellpadding="10">
	<tr>
		<td colspan="2" align="center">注册窗口</td>
		</tr>
	<tr>
		<td align="right">用户名：</td>
		<td><input type="text" name="username" size="20"></td>
	</tr>
	<tr>
		<td align="right">密&nbsp;&nbsp;码：</td>
		<td><input type="password" name="password1" size="20"></td>
	</tr>
	<tr>
		<td align="right">确认密码：</td>
		<td><input type="password" name="password2" size="20"></td>
	</tr>
	<tr>
		<td align="right">学&nbsp;&nbsp;号：</td>
		<td><input type="text" name="id" size="20"></td>
	</tr>
	<tr>
		<td align="right">真实姓名：</td>
		<td><input type="text" name="name" size="20"></td>
	</tr>
	<tr>
		<td align="right">年&nbsp;&nbsp;龄：</td>
		<td><input type="text" name="age" size="20"></td>
	</tr>
	<tr>
		<td align="right">性&nbsp;&nbsp;别：</td>
		<td>男<input type="radio" name="radio3" value="m"/>&nbsp;&nbsp;女<input type="radio" name="radio3" value="f" checked="checked" /></td>
	</tr>
	<tr>
		<td align="right">专&nbsp;&nbsp;业：</td>
		<td><input type="text" name="depart" size="20"></td>
	</tr>
	<tr>
		<td align="right">家庭住址：</td>
		<td><input type="text" name="address" size="20"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="submit" value="提交">
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="login.jsp">返回</a></td>
	</tr>
</table>
</form>
计算机1603班+1630090071陈名莉+1630090075李佳芮
</body>
</html>