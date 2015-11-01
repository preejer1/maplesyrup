package com.model2.mvc.web.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.model2.mvc.common.Page;
import com.model2.mvc.common.Search;
import com.model2.mvc.common.SendEmail;
import com.model2.mvc.service.domain.AuctionList;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.user.UserService;


@Controller
public class UserController {

	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	public User user;

	public UserController(){
		System.out.println(this.getClass());
	}

	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml ���� �Ұ�

	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;


	@RequestMapping("/addUserView.do")
	public String addUserView() throws Exception {

		System.out.println("/addUserView.do");

		return "forward:/user/addUserView.jsp";
	}

	@RequestMapping("/addUser.do")
	public String addUser( @ModelAttribute("user") User user, HttpSession session ) throws Exception {

		System.out.println("/addUser.do");
		//Business Logic
		
		userService.addUser(user);

		return "forward:user/welcome.jsp";
	}

		@RequestMapping("/getUser.do")
		public String getUser() throws Exception{
			System.out.println("gogo");
//			userService.getUser();
			
			return "forward:user/getUser.jsp";
		}
	
}