package com.devkduck.board.code;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.devkduck.board.entity.CodeVO;


@Mapper
public interface CodeMapper {

	List<CodeVO> getList();
}
