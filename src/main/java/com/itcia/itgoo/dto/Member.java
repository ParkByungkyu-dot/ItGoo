package com.itcia.itgoo.dto;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;


//@Getter@Setter
@NoArgsConstructor
@AllArgsConstructor
@Alias("member")
@Data
@Accessors(chain=true)
public class Member {
	private String id;
	private String password;
	private String useraddress;
	private String useremail;
	private String username;
	private String phone;
	private String birthday;
	private int enabled;
	
}
