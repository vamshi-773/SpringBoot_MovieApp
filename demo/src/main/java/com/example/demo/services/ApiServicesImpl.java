package com.example.demo.services;
import java.util.LinkedHashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.example.demo.Models.MovieInfo;

@Service
public class ApiServicesImpl implements ApiService{

	@Autowired
    private RestTemplate restTemplate;
	
	@Override
	public MovieInfo viewMovieByTitle(String  name) {
		String apiurl = "https://www.omdbapi.com/?t="+name+"&apikey=ca9009b9";		
		 LinkedHashMap<?, ?> response = restTemplate.getForObject(apiurl, LinkedHashMap.class);
	        MovieInfo movieInfo = new MovieInfo();
	        movieInfo.setTitle((String) response.get("Title"));
	        movieInfo.setYear((String) response.get("Year"));
	        movieInfo.setPlot((String) response.get("Plot"));
	        movieInfo.setPost((String) response.get("Poster"));
	        if(response.get("Response").equals("True"))
	        movieInfo.setResponse(true);
	        else
	        movieInfo.setResponse(false);
	        return movieInfo;
	}

}
