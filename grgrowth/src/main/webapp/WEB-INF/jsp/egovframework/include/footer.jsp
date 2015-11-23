<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	</div>
	<!-- /wrapper -->
	
	<div id="bottom">
		<div id="footer">
	
			<div class="clear"></div>
			
			<div id="foo_widget4">
				<div class="foo_widget4_left1">
					<img src="<c:url value="/images/main/logo.gif" />" alt="녹색성장 더 큰 대한민국" />
				</div>
				<div class="foo_widget4_left1">
					<a href="<c:url value="/menu999/sub001/GRG_999_101.do" />"><img src="<c:url value="/images/main/f21.gif" />" alt="홈페이지이용안내" /></a>
					<a href="<c:url value="/menu999/sub002/GRG_999_201.do" />"><img src="<c:url value="/images/main/f1.gif" />" alt="저작권정책" /></a>
					<a href="<c:url value="/menu999/sub003/GRG_999_301.do" />"><img src="<c:url value="/images/main/f4.gif" />" alt="사이트맵" /></a>
					<a href="<c:url value="/menu999/sub004/GRG_999_401.do" />"><img src="<c:url value="/images/main/f5.gif" />" alt="찾아오시는 길" /></a>
				</div>
				<div class="foo_widget4_left1" style="margin-left: 50px;">
					<label for="menuitem" class="screen_out">관련사이트</label>
					<select id="menuitem" name="menuitem" style="margin-top: 0px;">
						<option value="">관련사이트</option>
						<option value="http://www.gggi.org">GGGI</option>
						<option value="http://gcfund.net">GCF</option>
						<option value="http://www.gtck.re.kr">녹색기술센터</option>
						<option value="http://www.business.kaist.ac.kr/gsgg">KAIST 녹색성장대학원</option>
						<option value="http://www.gir.go.kr">온실가스종합정보센터</option>
						<option value="http://kcen.kr">한국기후·환경 네트워크</option>
						<option value="http://www.cdrs.re.kr">이산화탄소저감및처리기술개발사업단</option>
						<option value="http://www.climatechangecenter.kr">기후변화센터</option>
						<option value="http://www.greenfund.org">환경재단</option>
						<option value="http://www.keco.or.kr">한국환경공단</option>
						<option value="http://www.kemco.or.kr">에너지관리공단</option>
						<option value="http://green.kostat.go.kr">녹색성장지표</option>
						<option value="http://carbon.forest.go.kr">기후변화와 산림</option>
						<option value="http://www.eishub.or.kr/main_v2.asp">해외환경통합정보시스템</option>
						<option value="http://www.climate.go.kr">기후변화정보센터</option>
						<option value="http://thegreen.lh.or.kr">녹색기술실험관</option>
						<option value="http://www.unfccc.int">UNFCC</option>
						<option value="http://www.unescap.org/">유엔 경제사회 아시아태평양 지역위원회</option>
						<option value="http://www.iea.org">경제협력개발기구의 산하기관</option>
						<option value="http://www.ipcc.ch">IPCC</option>
						<option value="http://www.greengrowth.org">아시아 태평양 경제사회위원회</option>
						<option value="http://www.apcc21.net">APCC</option>
						<option value="http://www.undp.org">UNDP</option>
						<option value="http://www.oecd.org">OECD</option>
						<option value="http://www.pewclimate.org">퓨센터 글로벌 기후변화</option>
						<option value="http://www.ourplanet.com">Our Planet</option>
					</select>
					
					<a href="javascript:fnSitePop();" class="go" title="관련사이트 새창열림"><img src="<c:url value="/images/main/go.png" />" alt="go" /></a>
				</div>
	
				<div class="foo_widget1_right">
					<a title="새창" href="http://wa.or.kr/waMark/status_new.asp?op=1&wd=%EB%85%B9%EC%83%89%EC%84%B1%EC%9E%A5%EC%9C%84%EC%9B%90%ED%9A%8C" target="_blank"><img alt="(사)한국장애인단체총연합회 한국웹접근성인증평가원 웹 접근성 우수사이트 인증마크 인증마크(WA인증마크)" src="<c:url value="/images/main/wa.png" />" width="100" /></a>
				</div>
				
				<div class="foo_widget4_left2">
					<img src="<c:url value="/images/main/copyright_btm.gif" />" 
						alt="(30107)세종특별자치시 다솜로 261 어진동, 국무총리실 세종청사 231호 Tel.044-200-2886 COPYRIGHT(C) 2009 BY PRESIDENTIAL COMMITTEE ON GREEN GROWTH. ALL RIGHTS RESERVED" />
				</div>
			</div>
	
			<div class="clear"></div>
		</div>
	</div>
	
	<div id="footer_data">
		<div class="clear"></div>
	</div>
	
	<script type="text/javascript">
		/**
		 * 관련사이트 팝업
		 */
		function fnSitePop() {
			if ( $('#menuitem').val() ) {
				window.open($('#menuitem').val(), 'new');
			}
		}
	</script>
	
</body>	
</html>