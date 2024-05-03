package com.devkduck.board;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@EnableScheduling
@SpringBootApplication
public class MiniProj02Application {

	public static void main(String[] args) {
		SpringApplication.run(MiniProj02Application.class, args);
	}

}
