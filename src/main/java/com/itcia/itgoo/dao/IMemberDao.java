package com.itcia.itgoo.dao;

import com.itcia.itgoo.dto.Member;

public interface IMemberDao {

	boolean memberJoin(Member mb);
	
	Member searchid(Member mb);

}
