package com.devkduck.board.introduce;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller

public class IntroduceController {
	@GetMapping("/introduce/introduce")
	public String goIntroduce() {
		return "/introduce/introduce";
	}

}