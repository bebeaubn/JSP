<%@ page import ="java.util.ArrayList" %>
<%@page impor ="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    <% 
    int n = 10;
    request.setAttribute("n",n);
    
    List<String> array = new ArrayList<>();
    array.add("서울");
    array.add("대전");
    array.add("대구");
    
    request.setAtrribute("array",array);
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- JSTL
프로그래밍 언어에서 제공하는 변수선언, 조건문 , 반복문 등의 로직을 태그로 구사할수있게 해주는 라이브 러리입니다. -->


<c:set var="num" value="100"/>

<!-- set 을 이용해 선언한 변수는 pageContext영역에 세팅디어 el표현식으로 사용할수있다 -->

${num}

<c:if test="${n ne 10} }">
	참
	</c:if>
<br>
<!-- choose영역내부에 주석 절대 달지 말것 -->
<c:choose>
	<c:when test="${param.msg eq 10} ">나는 10이다 . </c:when>
	<c:when test="${param.mag eq 11}" >나는 10이 아니다 </c:when>
	<c:otherwise>모두 아니다.</c:otherwise>
	
</c:choose>	
<hr>

<!--  var : 값을 담을 변수
	  begin : 시작값
	  end : 종료값
	  step: 증가량 -->
	  <!-- 횟수를 정해서 하는것 -->
 <c:forEach> var = "i" begin ="1" end ="5" step = "1"
 <c:if test="${i mod 2 eq 1} }">
 	<font color="rea">안녕 (${i})</font>
 	</c:if>
 </c:forEach>
<hr>
<!-- for(String s : array ){
	println(s);
	}
 -->
 <!-- list의 갯수만큼 도는것  -->
<c:forEach> var = "s" item="${array}" varStatus="cnt">
	${cnt.count}/${s} --- ${cnt.index } / ${s}<br>
</c:forEach>	
	
	
	
</body>
</html>