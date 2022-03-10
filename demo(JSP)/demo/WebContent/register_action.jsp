<%@ include file="inc.jsp"%>
<%
//get parameters
String username = request.getParameter("username");
String password1 = request.getParameter("password1");
String password2 = request.getParameter("password2");
String email = request.getParameter("email");


//check null
if (username == null || password1 == null || password2 == null || !password1.equals(password2)) {
	response.sendRedirect("register.jsp");
}


//validate
boolean isValid = false;
String sql = "select * from user where username='"+username+"'";
try {
	Class.forName(drv).newInstance();
	Connection conn = DriverManager.getConnection(url, usr, pwd);
	Statement stm = conn.createStatement();
	ResultSet rs = stm.executeQuery(sql);
	if(!rs.next()) {
		sql = "insert into user(username,password,email) values('"+username+"','"+password1+"','"+email+"')";
		stm.execute(sql);
		isValid = true;
	}
	
	rs.close();
	stm.close();
	conn.close();
} catch (Exception e) {
	e.printStackTrace();
	out.println(e);
}

if (isValid) {
	response.sendRedirect("login.jsp");
} else {
	response.sendRedirect("register.jsp");
}

%>