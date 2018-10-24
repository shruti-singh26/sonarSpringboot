package com.shruti.controllers;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.web.ErrorMvcAutoConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.shruti.methods.Operations;

@RestController
public class springController {
	
	Operations obj = new Operations();
	int num1, num2;
	
	@RequestMapping("/")
	public String home(){
		return "homepage-deployment2";
	}
	
	@RequestMapping("/add")
	public int Addition(){
		int result = obj.Add(num1, num2);
		return result;
	}
	
	@RequestMapping("/multi")
	public int Multiply(){
		int result = obj.Multiply(num1, num2);
		return result;
	}

}
