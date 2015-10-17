<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" session="false"%>

<%@ include file="/WEB-INF/jsp/egovframework/include/header.jsp" %>

<script type="text/javascript">
	$(document).ready(function() {
// 		window.open("<c:url value="/main/noticePop.do" />", "noticePop", "width=260, height=226, scrollbars=0");
	});
</script>

<div id="home_container">

	<div class="home_left">
		<img src="<c:url value="/images/main/home_l_img01.gif" />" alt="희망의 새시대 창조경제를 선도하는 녹색성장2.0 더 큰 대한민국 GREEN GROWTH FOR ALL" />
		<div id="search" style="margin-top: 15px;">
			<form name="frm" method="post" action="<c:url value="/main/search.do" />" onsubmit="">
				<fieldset>
					<label for="s" class="screen_out">검색어</label>
					<input type="text" id="s" name="searchKeyword" style="width:165px;" value="검색어를 입력하세요" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;"/>
				</fieldset>
				<input type="image" id="searchsubmit" src="<c:url value="/images/main/home_l_btn.gif" />" style="margin-top:-4px" alt="Search in site..." />
			</form>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<a href="<c:url value="/cmmn/commonBoardList.do?category_seq=3" />"><img style="margin-left: 5px" src="<c:url value="/images/main/home_l_img02.gif" />" alt="자료실 여러 자료들을 찾아보실 수 있습니다." /></a>
	</div>
	<div class="home_center">
		<p class="home_c_main">
			<img src="<c:url value="/images/main/home_c_main.gif" />" alt="" />
		</p>
		<div class="news">
			<img src="<c:url value="/images/main/home_c_title.gif" />" alt="소식" />
			<ul>
				<div id="priBotTab2" class="primaryBottomTabs_body">
					<ul>
						
						<c:forEach var="vo" items="${ boardList }">
						
						<li>
							<span class="tabTitle"><img src="<c:url value="/images/main/bullet_arrow.gif" />" align="absmiddle" border="0" alt="" />
							<a href="<c:url value="/cmmn/commonBoardView.do?category_seq=${ vo.category_seq }&board_seq=${ vo.board_seq }" />" title="<c:out value="Permalink to ${ vo.title }" />">
								<c:out value="${ ct:subStringBytes(vo.title, 50) }" />
							</a>
							</span>
						</li>
						
						</c:forEach>
						
					</ul>
				</div>
			</ul>

		</div>
	</div>

	<div class="home_right">
		<div class="home_r_bn">
			<ul>
				<li class="bg">
					<span>위원회 소개 녹색성장위원회에 대해서 알려드립니다.</span>
					<a href="<c:url value="/menu004/sub001/GRG_004_101.do" />" class="go" title="위원회 소개가기"><img src="<c:url value="/images/main/go.png" />" alt="go" /></a>
				</li>
				<li class="bg">
					<span>녹색법령 각종 법령 자료들을 보실 수 있습니다.</span>
					<a href="<c:url value="/menu003/sub002/GRG_003_201.do" />" class="go" title="녹색법령가기"><img src="<c:url value="/images/main/go.png" />" alt="go" /></a>
				</li>
				<li class="bg2">
					<span>위원회 활동 위원회 활동에 대해서 알려드립니다.</span>
					<a href="<c:url value="/cmmn/commonBoardList.do?category_seq=1" />" class="go" title="위원회 활동"><img src="<c:url value="/images/main/go.png" />" alt="go" /></a>
				</li>
				<li class="bg2">
					<span>국가전략.5개년계획 녹색성장 및 기후변화대응 관련 국가계획 내용을 보실 수 있습니다.</span>
					<a href="<c:url value="/menu001/sub002/GRG_001_201.do" />" class="go" title="국가계획"><img src="<c:url value="/images/main/go.png" />" alt="go" /></a>
				</li>
			</ul>
		</div>

		<div class="home_r_weather">
			<div class="weather_tit">
				<img src="<c:url value="/images/main/home_r_title01.gif" />" alt="날씨" />
			</div>
			<div style="color: #d3d3d3;">
				<iframe src="<c:url value="/main/weatherTicker.do" />" name="myframe" width="300px" height="18px" marginwidth="0" marginheight="0" frameborder="no" scrolling="no" title="날씨"></iframe>
			</div>
		</div>

		<div class="home_r_bn2">
			<a href="<c:url value="/download/green-eng-bro.pdf" />" target="_blank"><img src="<c:url value="/images/main/e-book_22.jpg" />" alt="GREEN GORWTH KOREA Now & the Future www.greengrowth.go.kr" /></a>
		</div>

	</div>

</div>

<%@ include file="/WEB-INF/jsp/egovframework/include/footer.jsp" %>