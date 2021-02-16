package javalec.hotel.hpro.controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);

	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		logger.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	
	// 로그인 페이지 출력 - GET
	// 실제 로그인은 "/login"을 통해 Security에서 실행됨 - POST 방식으로 처리
//	@GetMapping("/member/mem_login")
//	public void loginInput(String error, String logout) {
//	
//		logger.info("error: " + error);
//		logger.info("logout: " + logout);
//	
//	}
	
	// 로그아웃 클릭시 출력되는 페이지 - GET
	@GetMapping("/member/customLogout")
	public void logoutGET() {
	
		logger.info("custom logout");
	}
}