package com.devkduck.board.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.devkduck.board.entity.BoardVo;
import com.devkduck.board.entity.PageRequestVO;


@Mapper
public interface BoardMapper {

	List<BoardVo> getBoardList(); // Board 테이블 가져오기
	
//	List<BoardVo> getList(PageRequestVO pageRequestVO);
//	int  getTotalCount(PageRequestVO pageRequestVO);
//
//	void insertUser(UserVo userVo); // 회원 가입
//
//	UserVo getUserByEmail(String email); // 회원 정보 가져오기
//
//	UserVo getUserById(String id);
//
//	void updateUser(UserVo userVo); // 회원 정보 수정
//
//	void deleteUser(String id); // 회원 탈퇴
//
//	UserVo login(UserVo userVo);
//
//	int updateMemberLastLogin(String email);
//
//	void loginCountInc(UserVo user);
//
//	void loginCountClear(String email);
//	
//	void memberAccountUnlocked();
}