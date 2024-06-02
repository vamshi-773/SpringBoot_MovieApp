package com.example.demo.clientcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Models.ListOfLists;
import com.example.demo.Models.Lists;
import com.example.demo.Models.MovieInfo;
import com.example.demo.Models.Movies;
import com.example.demo.Models.User;
import com.example.demo.repository.ListOfListsRepo;
import com.example.demo.repository.ListsRepo;
import com.example.demo.repository.MoviesRepo;
import com.example.demo.repository.UserRepo;
import com.example.demo.services.ApiService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	
	@Autowired
	private ApiService apiService;
	
	@Autowired
	private ListOfListsRepo listOfListsRepo;
	
	@Autowired
	private MoviesRepo moviesRepo;
	
	@Autowired 
	private ListsRepo listsRepo;
	
	@Autowired
	private UserRepo userRepo;
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	@GetMapping("userRegister")
	public String userRegister() {
		return "userRegister";
	}
	
	
	@PostMapping("/userReg")
	public ModelAndView userReg(HttpServletRequest req) {
		  User u = new User();
		  u.setEmail(req.getParameter("email"));
		  u.setPassword(req.getParameter("password"));
		  u.setName(req.getParameter("name"));
		  ModelAndView mv = new ModelAndView("Messages");
		  mv.addObject("sma","Registration Successfull");
		  userRepo.save(u);
		  return mv;
	}
	
	@PostMapping("/userlogin")
	public ModelAndView userLogin(HttpServletRequest req) {
		  String email = req.getParameter("email");
		  String pwd = req.getParameter("password");
		  User u = userRepo.userlogin(email, pwd);
		  ModelAndView mv = new ModelAndView();
		  if(u != null) {
			  mv.setViewName("Home");
			  mv.addObject("uname", u.getName());
			  return mv;
		  }else {
			  mv.setViewName("login");
			  mv.addObject("msg", "Login Failed!");
			  return mv;
		  }
	}
	 
	@GetMapping("/homePage")
	public String ExamplePage() {
		return "Home";
	}
	
	@PostMapping("/searchMovie")
	public ModelAndView Example(HttpServletRequest  req) {
		String name = req.getParameter("Name");
		HttpSession httpSession = req.getSession();
		MovieInfo  obj = (MovieInfo) apiService.viewMovieByTitle(name);
		ModelAndView mv = new ModelAndView();
		if(obj.isResponse()) {
			mv.setViewName("Home");
			mv.addObject("obj",obj);
			List<ListOfLists> lobj = listOfListsRepo.findAll();
			mv.addObject("lobj",lobj);
			httpSession.setAttribute("mobj", obj);			
		}
		else {
			mv.setViewName("Messages");
			mv.addObject("sma", "Movie Doesn't Exists");
		}
		return mv;
	}
	
	@GetMapping("/addmovie/{name}")
	public ModelAndView addmovie(HttpServletRequest req,@PathVariable("name") String name) {
		ModelAndView mv = new ModelAndView("Messages");
		HttpSession session = req.getSession();
		MovieInfo mobj = (MovieInfo) session.getAttribute("mobj");
		Movies m = new Movies(); 
		m.setName(mobj.getTitle());
		m.setImg(mobj.getPost());
		moviesRepo.save(m);
		Lists lobj = listsRepo.getListByName(name);
		if(lobj.getMoviesId()!= null)
			lobj.setMoviesId(lobj.getMoviesId()+","+m.getMid());
		else
			lobj.setMoviesId(m.getMid()+"");
		lobj.setType(name);
		listsRepo.save(lobj);
		mv.addObject("sma", "Movie Added SuccessFully");
		return mv;
	} 
	
	@GetMapping("movieLists")
	public ModelAndView movieLists(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("MovieLists");
		List<ListOfLists> lobj = listOfListsRepo.findAll();
		mv.addObject("lobj", lobj);
		return mv;
	}
	
	@GetMapping("movieList/{name}")
	public ModelAndView movieListsPage(@PathVariable String name) throws Exception {
		ModelAndView mv = new ModelAndView("Result");
		Lists mobj = listsRepo.getListByName(name);
		List<ListOfLists> lobj = listOfListsRepo.findAll();
		String arr[] = mobj.getMoviesId().split(",");
		List<Movies> mov = new ArrayList<>();
		for(int i = 0;i < arr.length;i++) {
			int id = Integer.parseInt(arr[i]);
			Movies obj = moviesRepo.findMoviesById(id);
		    if(obj!=null) mov.add(obj);
		}
		mv.addObject("ml",mov);
		mv.addObject("lobj", lobj);
		return mv;
	}
	
	@PostMapping("createList")
	public ModelAndView createList(HttpServletRequest req) {
		ModelAndView mv = new ModelAndView("Messages");
		String name = req.getParameter("lname");
		Lists tmp = listsRepo.getListByName(name);
        if(tmp==null) {
        ListOfLists obj = new ListOfLists();
		obj.setName(name);
		Lists lobj = new Lists();
		lobj.setType(name);
		if(obj.getListIds()!=null)
			obj.setListIds(obj.getListIds()+","+lobj.getLid());
		else
			obj.setLId(obj.getLid());
		listsRepo.save(lobj);
		listOfListsRepo.save(obj);
		mv.addObject("sma", "List Creasted SuccessFully");
        }
        else {
		mv.addObject("sma", "List Already Exists");
		}
		return mv;
	}
	
	
}
