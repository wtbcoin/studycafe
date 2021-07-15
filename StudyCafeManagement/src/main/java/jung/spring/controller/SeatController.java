package jung.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/seat/*")
public class SeatController {

	/*
	 * private static final Logger logger =
	 * LoggerFactory.getLogger(SeatController.class);
	 */
	/*
	 * @Inject private SeatService service;
	 * 
	 * @Inject private LockifmListService service2;
	 * 
	 * @Inject private SeatifmService service1;
	 * 
	 * @Inject private SlService service4;
	 */

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String listPage() throws Exception {

		return "seat/list";
	}


	@RequestMapping(value = "/register")
	public String registPOST() throws Exception {

		return "seat/register";
	}

	

}
