<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hiya!<br>
<%
	Connection conn=null;
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@DB202202011616_high?TNS_ADMIN=/Users/seohyunjun/Documents/Wallet_DB202202011616";
	
	
	Boolean connect = false;
		
	try{
	    Class.forName(driver);
	    conn=DriverManager.getConnection(url,"admin","Dhfkzmfelql1"); //자신의 아이디와 비밀번호
	    connect = true;
	    conn.close();
	}catch(Exception e){
	    connect = false;
	    e.printStackTrace();
	}
	%>
	<%
	if(connect==true){%>
	    연결되었습니다.
	<%}else{ %>
	    연결에 실패하였습니다.
	<%}%> 
	</body>
</html>