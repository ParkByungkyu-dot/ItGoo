package com.itcia.itgoo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itcia.itgoo.dto.Adopt;
import com.itcia.itgoo.dto.CareSheet;
import com.itcia.itgoo.dto.Dog;
import com.itcia.itgoo.dto.Reservation;
import com.itcia.itgoo.dto.SmallMeeting;

public interface IClientDao {
	@Select("select max(dogpics.dogpic) dogpic,dog.dogid,dog.DOGAGE,dog.dogname,dog.dogspecial,dog.sex,dog.shelterid,dog.status "
			+ "from dog join dogpics on dog.DOGID=dogpics.DOGID GROUP BY "
			+ "dog.dogid, dog.dogid, dog.DOGAGE, dog.dogname, dog.dogspecial, "
			+ "dog.sex, dog.shelterid, dog.status")
	List<Dog> adoplist();

	@Select("SELECT dogpic as dogpics FROM dog inner join dogpics on dogpics.dogid = dog.dogid where dog.dogid=#{dogid}")
	List<String> adoptlistdetail(@Param("dogid") String dogid);

	@Select("select * from dog where dogid=#{dogid}")
	Dog dogDetail(String dogid);

	@Select("SELECT * FROM dog join adopt on dog.dogid=adopt.dogid where dog.dogid=#{param1} and adopt.id=#{param2}"
	) Adopt AdoptDetail(String dogid,String id);

	@Insert("insert into adopt values(#{id},#{dogid},#{phase},#{score},#{idfile},#{dogcareer},#{job},#{why},#{teststart})")
	void insertapplyadopt(Adopt ad);

	List<Adopt> myPhasedogList(Adopt ad);


	List<Reservation> showmyactivity(Reservation rs);


	Dog finalsook(Dog dog);

	@Update("UPDATE adopt SET phase='6' WHERE dogid=#{dogid}")
	void updateDog(Reservation rs);

	@Delete("delete from adopt where dogid=#{dogid}")
	void deleteadopt(Reservation rs);


	List<CareSheet> showcaresheet();

	@Insert("insert into answercaresheet values(${id},${dogid},${questionnum},${answer})")
	void submitSheet(String a,CareSheet cs);

	void regismallmeeting(SmallMeeting sm);




}
