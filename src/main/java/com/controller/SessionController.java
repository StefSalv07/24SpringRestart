package com.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.BoxBean;
import com.bean.ResultBean;
import com.bean.UserBean;

@Controller
public class SessionController {

	@GetMapping("/")
	public String landing() {
		return "Welcome";
	}

	@GetMapping("/signup")
	public String signUp() {
		System.out.println("Signup Called ()");
		return "SignUp";
	}

	@GetMapping("/open")
	public String open() {
		return "Calc";
	}

	@PostMapping("/addNum")
	public String addNumber(ResultBean rBean, Model model) {
		rBean.setAddval(rBean.getNo1() + rBean.getNo2());

		model.addAttribute("result", rBean);
		return "Result";
	}

	@PostMapping("/saveUser")
	public String SignupData(UserBean ubean, Model model) {

		System.out.println("ubean-> firstname=> " + ubean.getFirstName());
		System.out.println("ubean-> LastName => " + ubean.getLastName());
		System.out.println("ubean-> Email => " + ubean.getEmail());
		System.out.println("ubean-> Password => " + ubean.getPassword());
		model.addAttribute("user", ubean);
		return "Home";
	}

	@GetMapping("/login")
	public String login() {
		return "Login";
	}

	@GetMapping("/forgetpass")
	public String forgetPassword() {
		return "ForgetPassword.jsp";
	}

	@GetMapping("/openBox")
	public String openBoxReg() {
		return "BoxReg";
	}

	@PostMapping("/saveplayer")
	public String savePlayer(BoxBean bean, Model model) {
		System.out.println("Save Player Called()");
		System.out.println(" PlayerName => " + bean.getPlayerName());
		System.out.println(" PlayerType  => " + bean.getPlayerType());
		System.out.println(" PlayerFood pref => " + bean.getFoodPref());
		System.out.println(" Player Drink Pref => " + bean.getDrink());
		model.addAttribute("players", bean);

		Boolean isError = false;

		if (bean.getPlayerName() == null || bean.getPlayerName().trim().length() == 0) {
			model.addAttribute("PlayerNameError", "Please Enter The Player Name");
			isError = true;
		}
		if (bean.getPlayerType() == null || bean.getPlayerType().trim().length() == 0) {
			model.addAttribute("PlayerTypeError", "Please Enter The Player Type");
			isError = true;
		}

		if (bean.getFoodPref() == null || bean.getFoodPref().equals("-1") == true) {
			model.addAttribute("FoodPrefrencesError", "Please Enter The Food Preference ");
			isError = true;
		}
		if (bean.getDrink() == null || bean.getDrink().isEmpty()) {
		    model.addAttribute("DrinkError", "Please select at least one cold drink");
		    isError = true;
		}

		

		if (isError) {
			return "BoxReg";
		} else {
			model.addAttribute("players", bean);
			return "ShowPlayerDetails";
		}
	}

	@GetMapping("/showplayer")
	public String showingPlayer() {
		System.out.println("ShowPlayer Called();");
		return "ShowPlayerDetails";
	}

}
