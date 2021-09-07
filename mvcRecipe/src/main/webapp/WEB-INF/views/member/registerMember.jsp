<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
 * 작성일 : 2021. 9. 7.
 * 작성자 : 박용복
 * 설명 : 회원 가입 완료 페이지
 * 수정일 : 2021. 9. 7.
--%>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<jsp:include page = "/WEB-INF/views/common/header.jsp" />
<div>
	<h2>회원가입 완료</h2>
	<div>
		<div>
			회원가입이 완료 되었습니다!
			<p>
				<input type = "button" value = "홈으로" onclick = "location.href='${pageContext.request.contextPath}/main/main.do'">
			</p>
		</div>
	</div>
</div>
<jsp:include page = "/WEB-INF/views/common/footer.jsp" />
</body>
</html>