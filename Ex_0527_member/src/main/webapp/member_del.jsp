<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("uth-8");
	//파라미터로 받은 보든 데이터는 문자열이기 떄문에 정수로 바꿔줘야한다
	
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	// idx에 해당하는 유저를 db에서 삭제
	
	int res = MemberDAO.getInstance().delete(idx);
	
	

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>