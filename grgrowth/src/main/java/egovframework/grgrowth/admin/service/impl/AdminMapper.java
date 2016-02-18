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
package egovframework.grgrowth.admin.service.impl;

import java.util.List;

import egovframework.grgrowth.admin.service.AdminLoginVO;
import egovframework.grgrowth.admin.service.PasswordChangeManageVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

/**
 * 관리자에 관한 데이터처리 매퍼 클래스
 */
@Mapper("adminMapper")
public interface AdminMapper {
    
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
    public void adminManageUpdate(PasswordChangeManageVO vo) throws Exception;
    
    /**
     * 비밀번호 변경이력 등록 요청을 처리하기 위해 데이터처리를 요청한다.
     * 
     * @param vo
     * @throws Exception
     */
    public void passwordChangeManageInsert(PasswordChangeManageVO vo) throws Exception;
}
