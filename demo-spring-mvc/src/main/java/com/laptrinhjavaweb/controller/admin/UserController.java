package com.laptrinhjavaweb.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.service.IUserService;

@Controller(value ="userControllerOfAdmin")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping(value = "/home/user/list", method = RequestMethod.GET)
	public ModelAndView showList(@ModelAttribute("model") UserModel model) {
		ModelAndView mav = new ModelAndView("admin/user/list");
		model.setListResult(userService.findAll());
		mav.addObject("model", model);
		return mav;
	}
	
	@RequestMapping(value = "/home/user/save", method = RequestMethod.GET)
	public ModelAndView editNew() {
		ModelAndView mav = new ModelAndView("admin/user/edit");
		return mav;
	}
}
