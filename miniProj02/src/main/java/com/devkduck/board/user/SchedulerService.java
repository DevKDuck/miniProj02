package com.devkduck.board.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Component
@RequiredArgsConstructor
@Slf4j
@EnableScheduling
public class SchedulerService {

    @Autowired
    private UserMapper userMapper;
    
    @Scheduled(fixedDelay = 60000) // 60초마다 실행
	public void run2() {
		log.info("60초마다 실행");
		userMapper.memberAccountUnlocked();
	}

}
