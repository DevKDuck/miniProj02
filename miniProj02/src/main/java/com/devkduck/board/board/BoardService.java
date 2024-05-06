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
import com.devkduck.board.entity.PageRequestVO;
import com.devkduck.board.entity.PageResponseVO;
import com.devkduck.board.entity.UserVo;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class BoardService {
    @Autowired
    private BoardMapper boardMapper;


    
    public List<BoardVo> getBoardList() {
        return boardMapper.getBoardList();
    }
    
//    public PageResponseVO<BoardVo> getList(PageRequestVO pageRequestVO) {
//    	List<BoardVo> list = boardMapper.getList(pageRequestVO);
//        int total = boardMapper.getTotalCount(pageRequestVO);
//        
//        log.info("list {} ", list);
//        log.info("total  = {} ", total);
//
//        PageResponseVO<BoardVo> pageResponseVO = PageResponseVO.<BoardVo>builder()
//                .list(list)
//                .total(total)
//                .size(pageRequestVO.getSize())
//                .pageNo(pageRequestVO.getPageNo())
//                .build();
//
//        return pageResponseVO;
//	}

}