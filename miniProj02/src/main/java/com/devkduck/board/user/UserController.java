package com.devkduck.board.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devkduck.board.entity.UserVo;

@Controller

public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model, Authentication authentication) {
		if (authentication != null) {

		}
		return "home";
	}

	@GetMapping("/userList")
	public String getUserList(Model model) { // User 테이블의 전체 정보를 보여줌
		List<UserVo> userList = userService.getUserList();
		model.addAttribute("list", userList);
		return "/admin/userListPage";
	}

	@GetMapping("/login/signupPage")
	public String signupPage() { // 회원 가입 페이지
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (authentication instanceof AnonymousAuthenticationToken)
			return "/login/signupPage";
		return "redirect:/";
	}

	@PostMapping("/signup")
	public String signup(UserVo userVo) { // 회원 가입
		try {
			userService.signup(userVo);
		} catch (DuplicateKeyException e) {
			return "redirect:/signup?error_code=-1";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/signup?error_code=-99";
		}
		return "redirect:/";
	}

	@GetMapping("/login/editPage")
	public String editPage(Model model) { // 회원 정보 수정 페이지
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String id;

		if (principal instanceof UserDetails) {
			// principal 객체가 UserDetails의 인스턴스인 경우, 사용자명 또는 ID를 얻기
			id = ((UserDetails) principal).getUsername();
		} else {
			// UserDetails 인스턴스가 아닌 다른 타입의 객체를 처리하는 경우 (예: 문자열)
			id = principal.toString();
		}

		// 사용자 ID를 기반으로 UserVo 객체 얻기
		UserVo userVo = userService.getUserById(id);

		// 모델에 사용자 정보 추가
		model.addAttribute("user", userVo);

		// 회원 정보 수정 페이지로 이동
		return "/login/editPage";
	}

	@PostMapping("/update")
	public String edit(UserVo userVo) { // 회원 정보 수정
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String id;

		if (principal instanceof UserDetails) {
			// principal이 UserDetails의 인스턴스인 경우, getUsername을 통해 사용자 ID 또는 이름을 가져옵니다.
			id = ((UserDetails) principal).getUsername();
		} else {
			// principal이 다른 타입의 객체인 경우(예: String), toString을 통해 처리합니다.
			id = principal.toString();
		}

		// 가져온 ID를 userVo 객체의 멤버 ID로 설정합니다.
		userVo.setMember_id(id);

		// 사용자 서비스의 edit 메소드를 호출하여 정보를 수정합니다.
		userService.edit(userVo);

		// 작업이 완료되면 메인 페이지로 리다이렉트합니다.
		return "redirect:/";
	}

	@GetMapping("/delete")
	public String withdraw(HttpSession session) { // 회원 탈퇴

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String id;

		if (principal instanceof UserDetails) {
			// principal이 UserDetails의 인스턴스인 경우, getUsername을 통해 사용자 ID 또는 이름을 가져옵니다.
			id = ((UserDetails) principal).getUsername();
			userService.withdraw(id);
		} else {
			// principal이 다른 타입의 객체인 경우(예: String), toString을 통해 처리합니다.
			id = principal.toString();
		}

		SecurityContextHolder.clearContext(); // SecurityContextHolder에 남아있는 token 삭제
		return "redirect:/";
	}
}
