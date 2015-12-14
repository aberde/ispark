package egovframework.grgrowth.common;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * 공통 상수 <br/>
 */
public class GrgrowthConstants {

	// ###########################################################
	// ## 기타 상수
	// ###########################################################
	public static final String YES = "Y";

	public static final String NO = "N";

	// 기상청 지역날씨 URL
	public static final String WEATHER_URL = "http://www.kma.go.kr/XML/weather/sfc_web_map.xml";
	
	// 검색구분(1: 위원회활동, 2: 주요소식, 3: 회의자료(2013.03~), 4: 회의자료(~2013.02), 5: 용어사전)
	public static final Map<String, String> SEARCH_SECTION;
	static {
        Map<String, String> dataMap = new LinkedHashMap<String, String>();
        dataMap.put("1", "위원회활동");
        dataMap.put("2", "주요소식");
        dataMap.put("3", "회의자료(2013.03~)");
        dataMap.put("4", "회의자료(~2013.02)");
        dataMap.put("5", "용어사전");
        SEARCH_SECTION = Collections.unmodifiableMap(dataMap);
    }
	
	// 검색화면 글 목록 수
	public static final int SEARCH_PAGE_UNIT = 20;
	
	// 세션 사용자 키
	public static final String SESSION_USER_ID = "SESSION_USER_ID";
	
	// 화면별 title
    public static final Map<String, String> PAGE_TITLE;
    static {
        Map<String, String> dataMap = new LinkedHashMap<String, String>();
        dataMap.put("home.jsp", "");
        dataMap.put("search.jsp", " - 통합검색");
        dataMap.put("GRG_001_101.jsp", " - 녹색성장 - 개념 - 개념");
        dataMap.put("GRG_001_102.jsp", " - 녹색성장 - 개념 - 추진배경");
        dataMap.put("GRG_001_201.jsp", " - 녹색성장 - 국가전략 - 국가전략");
        dataMap.put("GRG_001_202.jsp", " - 녹색성장 - 국가전략 - 5개년 계획");
        dataMap.put("category_seq=1", " - 소식 - 위원회활동");
        dataMap.put("category_seq=2", " - 소식 - 주요소식");
        dataMap.put("category_seq=3", " - 정보 - 회의자료 - 회의자료(2013.03~)");
        dataMap.put("category_seq=4", " - 정보 - 회의자료 - 회의자료(~2013.02)");
        dataMap.put("GRG_003_201.jsp", " - 정보 - 녹색법령");
        dataMap.put("GRG_003_301.jsp", " - 정보 - 용어사전");
        dataMap.put("GRG_003_401.jsp", " - 정보 - 관련 사이트");
        dataMap.put("GRG_004_101.jsp", " - 위원회 - 인사말");
        dataMap.put("GRG_004_201.jsp", " - 위원회 - 위원소개 - 당연직위원");
        dataMap.put("GRG_004_202.jsp", " - 위원회 - 위원소개 - 민간위원");
        dataMap.put("GRG_004_301.jsp", " - 위원회 - 위원회연혁");
        dataMap.put("GRG_004_401.jsp", " - 위원회 - 위원회기능 및 구성");
        dataMap.put("GRG_004_501.jsp", " - 위원회 - 위원회로고");
        dataMap.put("GRG_999_101.jsp", " - 이용안내 - 홈페이지 이용안내");
        dataMap.put("GRG_999_201.jsp", " - 이용안내 - 저작권정책");
        dataMap.put("GRG_999_301.jsp", " - 사이트맵");
        dataMap.put("GRG_999_401.jsp", " - 이용안내 - 찾아오시는길");
        PAGE_TITLE = Collections.unmodifiableMap(dataMap);
    }
	// ###########################################################
	
	// ###########################################################
	// ## 이미지 태그 추출 상수
	// ###########################################################
	public static final String GET_IMAGE_TAG_CONTENT = "content";

	public static final String GET_IMAGE_TAG_TAGYN = "tagyn";
	// ###########################################################
	
	// ###########################################################
	// ## 관리자 로그인 정보
	// ###########################################################
	// 관리자 아이디
	public static final String ADMIN_USER_ID = "greenmaster100";

	// 관리자 비밀번호
	public static final String ADMIN_USER_PW = "200%green";
	
	// 관리자 접근 가능 MAC ADDRESS
    public static final Map<String, String> ADMIN_ACCESS_IP;
    static {
        Map<String, String> dataMap = new LinkedHashMap<String, String>();
        dataMap.put("125.128.67.138", "");  // 녹색성장위원회
        dataMap.put("61.34.132.197", "");  // ISPARK
        dataMap.put("121.156.215.161", "");  // 웹디
        dataMap.put("61.101.87.228", "");  // 개발자
        ADMIN_ACCESS_IP = Collections.unmodifiableMap(dataMap);
    }
	// ###########################################################
	
	// ###########################################################
	// ## 에러메세지
	// ###########################################################
	// 관리자 로그인 정보 미일치
	public static final String ERR_LOGIN_FALSE = "관리자 로그인정보가 일치하지 않습니다.";
	// 관리자 접근 불가능 MAC ADDRESS
	public static final String ERR_ADMIN_ACCESS_FALSE = "접근 불가능한 장치입니다.";
	// ###########################################################
}
