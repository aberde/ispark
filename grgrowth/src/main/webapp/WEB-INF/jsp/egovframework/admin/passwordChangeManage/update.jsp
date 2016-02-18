<%@ page language="java" pageEncoding="utf-8" 	contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-language" content="ko">
<title>비밀번호 변경</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/layout.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/green.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/js/jquery-ui-1.11.4/jquery-ui.css" />">
<script type="text/javascript" src="<c:url value="/js/jquery-1.11.3.js" />"></script>
<script type="text/javascript" src="<c:url value="/js/jquery-ui-1.11.4/jquery-ui.js" />"></script>
<script type="text/javaScript">
	/**
	 * 비밀번호 변경 저장
	 */
	function fnSave() {
		var frm = document.frm;

		if(frm.password.value == ""){
			alert("비밀번호를 입력하세요.");
			return;
		}
		if(frm.password_confirm.value == ""){
			alert("비밀번호 확인을 입력하세요.");
			return;
		}
		if(frm.password.value != frm.password_confirm.value){
			alert("비밀번호를 확인하세요.");
			return;
		}
		
   		if ( confirm("저장하시겠습니까?") ) {
   			frm.action = "<c:url value='/admin/passwordChangeManage/updateProc.do'/>";
   			frm.submit();
   		}
	}
	
	/**
	 * 비밀번호 변경이력 관리 목록으로 이동.
	 */
	function fnList() {
		document.frm.action = "<c:url value='/admin/passwordChangeManage/list.do'/>";
		document.frm.submit();
	}
</script>
</head>

<body style="text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<div id="content_pop" style="width: 800px;">
		<form:form name="frm" commandName="vo" method="post">
		
			 <div id="home" style="text-align: right;">
				<span class="btn_blue_l" title="홈으로">
					<a href="<c:url value="/" />">홈으로</a>
					<a href="<c:url value="/admin/adminLogoutProc.do" />">로그아웃</a>
				</span>
			</div>
			<div id="title2">
				<ul>
					<li style="text-align: left;"><img src="<c:url value='/images/egovframework/rte/title_dot.gif'/>" alt="" /> 비밀번호 변경</li>
				</ul>
			</div>
			<div id="table">
				<table border="1" cellpadding="0" cellspacing="0" style="width:800px; border-top:#C2D0DB 2px solid; border-left:#ffffff 1px solid; border-right:#ffffff 1px solid; border-bottom:#C2D0DB 1px solid; border-collapse: collapse;" summary="비밀번호 변경할 수 있다.">
					<caption>비밀번호 변경</caption>
					<colgroup>
						<col width="120" />
						<col width="680" />
					</colgroup>
					
					<tr>
						<td class="tbtd_caption">사용자 아이디</td>
						<td class="tbtd_content"><c:out value="${ sessionScope.SESSION_USER_ID }" /></td>
					</tr>
					<tr>
						<td class="tbtd_caption">비밀번호</td>
						<td class="tbtd_content"><form:password path="password" cssStyle="width: 100%;" /></td>
					</tr>
					<tr>
						<td class="tbtd_caption">비밀번호 확인</td>
						<td class="tbtd_content"><input type="password" id="password_confirm" name="password_confirm" style="width: 100%;" /></td>
					</tr>
				</table>
			</div>
			<div id="sysbtn">
				<ul>
					<li style="text-align: right;">
						<!-- 저장 버튼 -->
						<span class="btn_blue_l" title="저장">
							<a href="#link" onClick="fnSave(); return false;">저장</a>
						</span>
						<!-- 목록 버튼 -->
						<span class="btn_blue_l" title="목록">
							<a href="#link" onClick="fnList(); return false;">목록</a>
						</span>
						<!-- 초기화 버튼 -->
						<span class="btn_blue_l" title="초기화">
							<a href="#link" onClick="document.frm.reset(); return false;">초기화</a>
						</span>
					</li>
				</ul>
			</div>
			
			<!-- 검색조건 유지 -->
			<form:hidden path="pageIndex" />
		</form:form>
	</div>
</body>
</html>