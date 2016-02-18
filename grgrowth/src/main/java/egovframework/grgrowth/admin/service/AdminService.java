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

import java.util.List;

import org.springframework.transaction.annotation.Transactional;



/**
 * 관리자 처리하는 비즈니스 인터페이스
 */
public interface AdminService {
    
    /**
     * 로그인을 처리하기 위해 데이터처리를 요청한다.
     * 
     * @param vo
     * @return int
     * @throws Exception
     */
    public int loginCheck(AdminLoginVO vo) throws Exception;
    
    /**
     * 비밀번호 변경이력 관리 목록조회 요청을 처리하기 위해 데이터처리를 요청한다.
     * 
     * @param vo
     * @return List
     * @throws Exception
     */
    public List<PasswordChangeManageVO> passwordChangeManageList(PasswordChangeManageVO vo) throws Exception;
    
    /**
     * 비밀번호 변경이력 관리 총 레코드 수 조회 요청을 처리하기 위해 데이터처리를 요청한다.
     * 
     * @param vo
     * @return int
     * @throws Exception
     */
    public int passwordChangeManageListTotCnt(PasswordChangeManageVO vo) throws Exception;
    
    /**
     * 비밀번호 변경 요청을 처리하기 위해 데이터처리를 요청한다.
     * 
     * @param vo
     * @throws Exception
     */
    @Transactional
    public void passwordChangeManageUpdate(PasswordChangeManageVO vo) throws Exception;
    
}
