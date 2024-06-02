package com.example.demo.Models;


public class MovieInfo {
	private String title;
    private String year;
    private String plot;
    private String post;
    private boolean Response;
    
    public boolean isResponse() {
		return Response;
	}

	public void setResponse(boolean response) {
		Response = response;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	// Getters and setters
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getPlot() {
        return plot;
    }

    public void setPlot(String plot) {
        this.plot = plot;
    }
}
