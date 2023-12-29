package com.itwill.fourmen.repository;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

import com.itwill.fourmen.domain.Artist;
import com.itwill.fourmen.domain.Artist_Img;
import com.itwill.fourmen.domain.Artist_Works;
import com.itwill.fourmen.domain.Artist_Works_Img;

public interface ArtistDao {

	List<Artist> selectOrderByUseridDesc();
	
	List<Artist_Img> selectUserImgByUserid();
	
	// worksid 찾아오기
	Long getWorksID();
	
	// Works 테이블에서 userid 찾아오기
	String getUserIdByWorksId(Long worksid);
	
	Artist selectByUserid(String userid);
	
	Artist_Img selectUserProfileImgByUserid(String userid);
	
	Artist_Works_Img selectWorksImgByImgId(Long imgid);

	List<Artist_Works> selectWorksListByUserid(String userid);
	
	Artist_Works selectByWorksid(Long worksid);
	
	Artist_Works selectWorksByCreatedDate(Timestamp time);
	
	List<Artist_Works_Img> selectWorksImgByWorksid(Long worksid);
	
	int updateArtist(Artist artist);
	
	int updateArtistProfileImg(Artist_Img artist_Img);
	
	int deleteArtistProfileImg(String userid);
	
	int createWorks(Artist_Works artist_Works);
	
	int createWorksImg(Artist_Works_Img artist_Works_Img);
	
	int deleteWorks(Long worksid);
	
	int updateWorksArticle(Artist_Works artist_Works);
	
	int deleteWorksImg(Long imgid);
}
