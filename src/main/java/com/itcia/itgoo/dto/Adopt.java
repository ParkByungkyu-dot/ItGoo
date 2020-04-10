package com.itcia.itgoo.dto;

import java.util.List;

import org.apache.ibatis.type.Alias;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
@NoArgsConstructor
@Alias("adopt")
@Data
@Accessors(chain=true)
public class Adopt {
	private String id;
	private int dogid;
	private int activitynum;
	private int phase;
	private int score;
	private String idfile;
	private String dogcareer;
	private String job;
	private String why;
	private String teststart;
	private String username;
	private String dogname;
	private String phone;
	private String dogpic;
	private String dogage;
	private String dogspecial;
	private List<String> dogpics;
	private int status;
	private String phasename;
	private String sex;
	private String thum;
}

