package com.itwill.fourmen.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Artist {

	private String userid;
	private String artist_bio_kor;
	private String artist_bio_eng;
	private String artist_img;
	
	
}
