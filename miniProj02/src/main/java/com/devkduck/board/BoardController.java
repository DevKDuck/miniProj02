package com.devkduck.board;

import java.security.Principal;

import com.devkduck.board.entity.UserVo;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/board")

public class BoardController {
	
	@GetMapping("/list")
	public void list(Authentication authentication) {
		//spring security로 로그인 객체를 얻는다 
		//인증 후 로그인 객체를 가져오는 방법
		//2. Controller에서 Authentication 객체를 가져오는 방법
		UserVo memberVO = (UserVo) authentication.getPrincipal();
	
	}
	
	@GetMapping("/list2")
	public void list2(@AuthenticationPrincipal UserVo memberVO) {
		//spring security로 로그인 객체를 얻는다 
		//인증 후 로그인 객체를 가져오는 방법
		//2. Controller에서 Principal 객체를 가져오는 방법
	
	}
	
	@GetMapping("/list3")
	public void list3() {
		//spring security로 로그인 객체를 얻는다
		//인증 후 로그인 객체를 가져오는 방법
		//3. SecurityContextHolder에서 직접 가져오는 방법
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal(); 
		UserDetails userDetails = (UserDetails)principal; 
		String username = userDetails.getUsername(); 
		String password = userDetails.getPassword();
		
	}
}
