package com.example.sample1.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@Autowired
	HttpSession session;
	
	@RequestMapping("/header.do") 
    public String header(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/header";
    }
	
	@RequestMapping("/main.do") 
	public String test(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/main";
	}
	
	@RequestMapping("/footer.do") 
	public String footer(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
		return "/footer";
	}
	
	
	//패키지
	@RequestMapping("/package.do") 
    public String packageMain(HttpServletRequest request, Model model, @RequestParam HashMap<String, Object> map) throws Exception{
        return "/package/package-main";
    }
}
