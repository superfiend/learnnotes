<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>最简单的在jsp中使用java bean示例 04</title>
</head>
<body>
	<!-- 页面描述
		  该页面主要是了解bean的简单使用, 就是通过将from中的某些值映射到bean当中。
		  然后通过另外一种较为简洁的方式输出。
	 -->
	 
	<!-- 请通过http://localhost:8080/jsplearn/beanwithjsp_04.html来访问当前示例 -->

	<%
		// 通过设置这个, 避免post请求传来的中文数据乱码
		request.setCharacterEncoding("utf-8");
	%>

	<!-- jsp中的bean共分为4个作用域, page(默认), request, session, application -->
	<!-- jsp中的bean的名称应保持一致, 包括setter中的形参名字 -->
	<!-- 所以说, 只要是访问当前jsp文件的request请求的url中拥有的参数, 或者form中拥有的参数, 都能够进行关联 -->

	<!-- 使用该标签之后, 就等价于User firstUserBean = new User() -->
	<!-- id为该bean的名字(不可重复), class为类的全路径 -->
	<jsp:useBean id="fourthUserBean" class="xm.learn.jsp.bean.User"></jsp:useBean>

	<!-- 使用该标签之后, 就等价于给所有匹配的属性设置firstUserBean.setXXX("") -->
	<!-- 这是第三种设置属性值的方式, 关联表单中的某个元素 -->
	<!-- 注意, 表单中的name属性应与bean中的属性名一一对应 -->
	<jsp:setProperty property="username" name="fourthUserBean" />

	<!-- 使用该标签之后, 就等价于firstUserBean.getUsername() -->
	<jsp:getProperty property="username" name="fourthUserBean" />
	
	<!-- 下列语句该语句等价于<jsp:getProperty property="username" name="fourthUserBean" /> -->
	${fourthUserBean.username}
</body>
</html>
