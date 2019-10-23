<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>最简单的在jsp中使用java bean示例 01</title>
</head>
<body>
	<!-- 页面描述
		  该页面主要是了解bean的简单使用, 就是直接在页面中设置bean的值。
	 -->

	<!-- 请通过http://localhost:8080/jsplearn/beanwithjsp_01.jsp来访问当前示例 -->
	
	<!-- jsp中的bean共分为4个作用域, page(默认), request, session, application -->
	<!-- jsp中的bean的名称应保持一致, 包括setter中的形参名字 -->
	
	<!-- 使用该标签之后, 就等价于User firstUserBean = new User() -->
	<!-- id为该bean的名字(不可重复), class为类的全路径 -->
	<jsp:useBean id="firstUserBean" class="xm.learn.jsp.bean.User"></jsp:useBean>
	
	<!-- 使用该标签之后, 就等价于firstUserBean.setUsername("小埋") -->
	<!-- 这是第一种设置属性值的方式, 直接设置法 -->
	<jsp:setProperty property="username" name="firstUserBean" value="小埋"/>
	
	<!-- 使用该标签之后, 就等价于firstUserBean.getUsername() -->
	<jsp:getProperty property="username" name="firstUserBean"/>
</body>
</html>