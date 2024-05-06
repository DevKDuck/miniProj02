package com.devkduck.board.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BoardVo {
    private int id;
    private String title;
    private String content;
    private String password;
    private String writer;
    private String creation_date;
    private Integer view_count;
    
//    private Boolean isNew;
	
}