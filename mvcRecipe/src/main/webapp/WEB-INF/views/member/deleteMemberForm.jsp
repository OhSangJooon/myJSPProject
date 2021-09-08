<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
 * 작성일 : 2021. 9. 8.
 * 작성자 : 박용복
 * 설명 : 회원 탈퇴 form
 * 수정일 : 2021. 9. 8.
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/bootstrap.bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>회원 탈퇴</title>
<script type="text/javascript" src = "${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#delete_form').submit(function() {
			if($('#id').val().trim() == '') {
				alert('아이디를 입력하세요!');
				$('#id').val('').focus();
				return false;
			}
			if($('#passwd').val().trim() == '') {
				alert('비밀번호를 입력하세요!');
				$('#passwd').val('').focus();
				return false;
			}
			if($('#cpasswd').val().trim() == '') {
				alert('비밀번호 확인을 입력하세요!');
				$('#cpasswd').val('').focus();
				return false;
			}
			if($('#passwd').val() != $('#cpasswd').val()) {
				alert('비밀번호와 비밀번호 확인 불일치');
				$('#cpasswd').val('').focus();
				return false;
			}
			var answer = confirm('정말 회원 탈퇴 하시겠습니까?');
			if(answer == true) {
				return;
			}else {
				return false;
			}
		});
		
		// 비밀번호 확인까지 한 후 다시 비밀번호를 수정하면 비밀번호 확인 초기화
		$('#passwd').keyup(function() {
			$('#cpasswd').val('');
			$('#message_id').text('');
		});
		
		// 비밀번호와 비밀번호 확인 일치 여부 체크
		$('#cpasswd').keyup(function() {
			if($('#passwd').val() == $('#cpasswd').val()) {
				$('#message_id').text('비밀번호 일치');
			}else {
				$('#message_id').text('');
			}
		});
	});
</script>
</head>
<body>
<div class = "">
	<jsp:include page = "/WEB-INF/views/common/header.jsp" />
	<h2>회원 탈퇴</h2>
	<form action = "deleteMember.do" method = "post" id = "delete_form">
		<ul>
			<li>
				<label for = "id">아이디</label>
				<input type = "text" name = "id" id = "id" maxlength = "12">
			</li>
			<li>
				<label for = "passwd">비밀번호</label>
				<input type = "password" name = "passwd" id = "passwd" maxlength = "12">
			</li>
			<li>
				<label for = "cpasswd">비밀번호 확인</label>
				<input type = "password" name = "cpasswd" id = "cpasswd" maxlength = "12">
				<span id = "message_id"></span>
			</li>
		</ul>
		<div class = "">
			<input type = "submit" value = "회원 탈퇴">
			<input type = "button" value = "뒤로 가기" onclick = "location.href='myPage.do'"> 
		</div>
	</form>
</div>
<jsp:include page = "/WEB-INF/views/common/footer.jsp" />
</body>
</html>