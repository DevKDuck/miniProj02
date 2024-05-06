package com.devkduck.board.board;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.devkduck.board.entity.BoardVo;
import com.devkduck.board.entity.UserVo;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class BoardService {
    @Autowired
    private BoardMapper boardMapper;

//    private final PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//
//    public static void main(String [] args) {
//		BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder();
//		System.out.println(bcryptPasswordEncoder.encode("1004"));
//		System.out.println(bcryptPasswordEncoder.encode("0123456789010234567890123456789"));
//	}
//    
//    @Override
//	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
//		log.info("username = {}", username);
//		UserVo resultVO = userMapper.login(UserVo.builder().member_id(username).build());
//		if (resultVO == null) {
//			log.info(username + " 사용자가 존재하지 않습니다");
//			throw new UsernameNotFoundException(username + " 사용자가 존재하지 않습니다");
//		}
//		
//		//로그인 횟수를 카운트 한다
//		userMapper.loginCountInc(resultVO);
//		
//		return resultVO;
//	}
    
    public List<BoardVo> getBoardList() {
        return boardMapper.getBoardList();
    }

//    public UserVo getUserById(String id) {
//        return userMapper.getUserById(id);
//    }
//
//    public UserVo getUserByEmail(String email) {
//        return userMapper.getUserByEmail(email);
//    }
//
//    public void signup(UserVo userVo) { // 회원 가입
//        if (!userVo.getUsername().equals("") && !userVo.getMember_pwd().equals("")) {
//		    // password는 암호화해서 DB에 저장           
//            userVo.setMember_pwd(passwordEncoder.encode(userVo.getPassword()));
//            userMapper.insertUser(userVo);
//        }
//    }
//
//    public void edit(UserVo userVo) { // 회원 정보 수정
// 		// password는 암호화해서 DB에 저장      
//        userVo.setMember_pwd(passwordEncoder.encode(userVo.getPassword()));
//        userMapper.updateUser(userVo);
//    }
//
//    public void withdraw(String id) { // 회원 탈퇴
//        userMapper.deleteUser(id);
//    }
//
//    public PasswordEncoder passwordEncoder() {
//        return this.passwordEncoder;
//    }
}