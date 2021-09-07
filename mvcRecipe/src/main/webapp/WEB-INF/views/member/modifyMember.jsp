<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<%-- 
 * 작성일 : 2021. 9. 8.
 * 작성자 : 박용복
 * 설명 : 회원정보 수정 완료
 * 수정일 : 2021. 9. 8.
--%>
<c:if test = "${check == true}">
	<script>
		alert('회원정보를 수정했습니다.');
		location.href='myPage.do';
	</script>
</c:if>
<c:if test = "${check == false}">
	<script>
		alert('비밀번호 불일치');
		history.go(-1);
	</script>
</c:if>