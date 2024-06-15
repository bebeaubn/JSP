<%@page import="java.util.Date" %>
<%@page import="vo.PersonVO" %>
<%@page import ="java.util.ArrayList" %>
<%@page impor ="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="fn" uri ="http://java.sun.com/jsp/jstl/functions" %>
    
    <%
    List<PersonVO> list = new ArrayList<>();
    list.add(new PsersonVO("홍길동",20));
    list.add(new PsersonVO("박길동",30));
    request.setAtrribute("list",list);
    
    int money = 12000000;
    Date today = new Date();
    
    request.setAtrribute("money",money);
    request.setAtrribute("today",today);
    
    String str = "kim Mal DDong";
    
    request.setAtrribute ("str" , str); 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:forEach var="vo" item= "${list}">
	${vo.name} / ${vo.age}
	</c:forEach>
	<hr>
	&#8361;<fmt:formatNumber value="${money}" /> <br>
	<fmt:formatDate value="${today}" /><br>
	<fmt:formatDate value="${today}" pattern ="yyyy년MM월dd일 "/><br>
	
	<!--  MM : 월
	 	  DD : 1월1일부터 현재까지 일수 
	 	  dd : 햔재 달의 일
	 	  mm : 분-->

<hr>
<!-- fn은 단독으로 쓸수없고 el표현식과 같이 사용 해야한다 -->
문자열의 길이 : ${fn:lenght(str)}<br>
글자의 글자값 반환 : ${fn:indexOf(str,"M")}<br>
문자열 자르기 : ${fn:split(str," ")[0]}<br>

</body>
</html>









