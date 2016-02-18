/*
 * Copyright 2011 MOPAS(Ministry of Public Administration and Security).
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.grgrowth.admin.service;

import egovframework.grgrowth.common.SearchVO;

/**
 * 비밀번호 변경이력 관리를 저장하기 위한 VO클래스
 */
public class PasswordChangeManageVO extends SearchVO {

	private static final long serialVersionUID = 1L;
	
	/** 사용자 아이디 */
	private String id;
	
	/** 사용자 비밀번호 */
	private String password;
	
	/** 등록일 */
	private String regdate;
	
	/** 수정일 */
	private String upddate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRegdate() {
        return regdate;
    }

    public void setRegdate(String regdate) {
        this.regdate = regdate;
    }

    public String getUpddate() {
        return upddate;
    }

    public void setUpddate(String upddate) {
        this.upddate = upddate;
    }

}