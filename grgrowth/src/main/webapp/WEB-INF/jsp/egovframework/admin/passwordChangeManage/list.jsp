<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="content-language" content="ko">
<title>게시판조회목록 </title>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/layout.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/green.css" />">
<%-- <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/egov.css'/>"> --%>
<script type="text/javaScript" language="javascript">
	/**
	 * 비밀번호 변경이력 관리 목록으로 이동.
	 */
	function fnList() {
		document.frm.pageIndex.value='1';
		document.frm.action = "<c:url value='/admin/passwordChangeManage/list.do'/>";
		document.frm.submit();
	}
	
	/**
	 * 비밀번호 변경화면으로 이동.
	 */
	function fnForm() {
		document.frm.action = "<c:url value='/admin/passwordChangeManage/update.do'/>";
		document.frm.submit();
	}
	
	/**
	 * 페이징
	 */
	function linkToPage(pageNo) {
		document.frm.pageIndex.value = pageNo;
		document.frm.action = "<c:url value='/admin/passwordChangeManage/list.do'/>";
		document.frm.submit();
	}
	
	/**
	 * 카테고리 변경
	 * @param category_seq 카테고리 일련번호
	 */
	function fnCategoryChange(category_seq) {
		document.frm.category_seq.value = category_seq;
		document.frm.pageIndex.value = "1";
		document.frm.action = "<c:url value='/admin/boardList.do'/>";
		document.frm.submit();
	}
</script>
</head>

<body style="margin:0; padding:0;text-align: center; margin: 0 auto; display: inline; padding-top: 100px;">
	<div id="content_pop" style="width: 800px;">
		<form:form name="frm" commandName="vo" method="post" onsubmit="fnList()">
			<input type="hidden" name="category_seq" />
			
			<div id="home" style="text-align: right;">
				<span class="btn_blue_l" title="홈으로">
					<a href="<c:url value="/" />">홈으로</a>
					<a href="<c:url value="/admin/adminLogoutProc.do" />">로그아웃</a>
				</span>
			</div>
			
			<div>
				<ul>
					<c:forEach var="section" items="${ search_section }">
						<li style="display: inline; padding-left: 30px;"><a href="#" onclick="fnCategoryChange('<c:out value="${ section.key }" />');"><c:out value="${ section.value }" /></a></li>
					</c:forEach>
					
					<li style="display: inline; padding-left: 30px; font-weight: bold;"><a href="<c:url value="/admin/passwordChangeManage/list.do" />">비밀번호 변경이력 관리</a></li>
				</ul>
			</div>
			
			<div id="table">
				<table border="1" cellpadding="0" cellspacing="0" summary="비밀번호 변경이력 관리 목록을 조회할 수 있다." style="width: 100%;">
					<caption>비밀번호 변경이력 관리 목록조회</caption>
					<colgroup>
						<col width="40">
						<col width="120">
						<col width="100">
						<col />
						<col width="100">
					</colgroup>
					<thead>
						<tr align="center">
							<th>번호</th>
							<th>사용자 아이디</th>
							<th>수정일</th>
						</tr>
					</thead>
					<tbody align="center">
						<c:if test="${ fn:length(passwordChangeManageList) == 0 }">
							<tr>
								<td class="listtd" colspan="5">해당 데이터가 없습니다.</td>
							</tr>
	    				</c:if>
						<c:forEach var="passwordChangeManage" items="${ passwordChangeManageList }" varStatus="status">
							<tr>
								<td class="listtd"><c:out value="${ (paginationInfo.currentPageNo - 1) * paginationInfo.recordCountPerPage + status.count }" /></td>
								<td class="listtd"><c:out value="${ passwordChangeManage.id }" /></td>
								<td class="listtd"><c:out value="${ passwordChangeManage.regdate }" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div id="paging" style="margin-top: 10px;">
					<ui:pagination paginationInfo="${ paginationInfo }" type="text" jsFunction="linkToPage" />
					<form:hidden path="pageIndex" />
				</div>
				
			</div>
		</form:form>
		
		<div id="sysbtn">
			<ul>
				<!-- 등록 버튼 -->
				<li style="text-align: right;">
					<span class="btn_blue_l" title="등록">
						<a href="#link" onclick="fnForm(); return false;">비밀번호 변경</a>
					</span>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>