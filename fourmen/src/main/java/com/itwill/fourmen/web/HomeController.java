package com.itwill.fourmen.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwill.fourmen.domain.Artist;
import com.itwill.fourmen.domain.Exhibition;
import com.itwill.fourmen.dto.artist.ArtistListItemDto;
import com.itwill.fourmen.service.ArtistService;
import com.itwill.fourmen.service.ExhibitionService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller // 컨트롤러 컴포넌트
public class HomeController {
	
	private final ExhibitionService exhibitionService;
	private final ArtistService artistService;
	
    @GetMapping("/")
    public String home() {
    	log.debug("home()");
        
        return "home"; // view(JSP)의 경로를 리턴
    }
    
    @GetMapping("/artist")
    public void artist(Model model) {
    	log.debug("artist()");
    	
    	List<ArtistListItemDto> artists = artistService.read();
    	log.debug("Artist = {} " ,artists);
    	model.addAttribute("artistList", artists);
    	
    }
    
    @GetMapping("/forum/freeboard")
    public void forum() {
    	log.debug("forum()");
    }
    

    @GetMapping("/exhibition")
    public void exhibition(Model model) {
    	log.debug("exhibition()");
    	
    	List<Exhibition> exhibition= exhibitionService.read();
    	log.debug("exhibition={}",exhibition);
    	model.addAttribute("exhibition",exhibition);
    }
    
//    @GetMapping("/market")
//    public void market() {
//    	log.debug("market()");
//    }
    

//    @GetMapping("/market/detail")
//    public String marketDetail() {
//    	log.debug("marketDetail()");
//    	
//    	return "/market/detail";
//    }
    
    @GetMapping("/admin")
    public void admin() {
    	log.debug("forum()");
    }

    
}
// HomeController
// @Component (super) <-- @Controller, @Service , @Repository (sub)
