package javalec.hotel.hpro.controller;

import java.security.Principal;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javalec.hotel.hpro.hotelDAO.IDao;
import javalec.hotel.hpro.hotelDTO.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/member")
public class memberController {
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);

	
	@Autowired
	private SqlSession sqlSession;
//	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
//	@RequestMapping(value="/")
//	public String memberintro(Locale locale,Model model) {
//		
//		return "member/mem_intro";
//	}
	
	//회원가입 페이지 이동
		@RequestMapping(value = "/memberjoin", method = RequestMethod.GET)
		public String memberjoin(Locale locale, Model model) {
			return "/member/mem_join";
		}
		
		//회원가입
		@RequestMapping(value = "/memberjoin1", method = RequestMethod.POST)
		public String memberjoin1(HttpServletRequest req, Model model) {
			String id=req.getParameter("id");
			String pw=req.getParameter("password");
			String name=req.getParameter("name");
			String address=req.getParameter("mem_address");
			System.out.println(address);
			String email=req.getParameter("mem_email");
			System.out.println(email);
			String mobile=req.getParameter("mem_mobile");
			System.out.println(mobile);
			String password=pwdEncoder.encode(pw);
			IDao dao=sqlSession.getMapper(IDao.class);
			dao.mem_join(id,password,name,address,email,mobile);
			return "/member/mem_joincp";
		}
		
	//정보조회
	@RequestMapping(value = "/mypage/myinfo", method = RequestMethod.GET)
	public String myinfo_main(Principal principal,Model model) {
		String ID=principal.getName();
        System.out.println(ID);
        IDao dao=sqlSession.getMapper(IDao.class);
        System.out.println("Idao : "+dao);
        UserDTO dto=dao.mypage(ID);
        System.out.println("UserDTO :"+dto);
        model.addAttribute("mem_info",dto);
		return "member_mypage/mem_myinfo";
	}
	
	//정보수정 페이지 이동
	@RequestMapping(value = "/mypage/mem_udpage", method = RequestMethod.GET)
	public String mem_update(Principal principal, Model model) {
		//저장된 정보 불러오기
				String ID=principal.getName();
		        System.out.println(ID);
		        IDao dao=sqlSession.getMapper(IDao.class);
		        System.out.println("Idao : "+dao);
		        UserDTO dto=dao.mypage(ID);
		        System.out.println("UserDTO :"+dto);
		        model.addAttribute("mem_info",dto);
		return "/member_mypage/mem_update";
	}
	//정보수정
	@RequestMapping(value = "/mypage/mem_update", method = RequestMethod.POST)
	public String memberupdate(HttpServletRequest req, Model model,Principal principal) {
        IDao dao=sqlSession.getMapper(IDao.class);
		String ID=principal.getName();
        System.out.println(ID);
        //수정할 정보
        String PW=req.getParameter("userpw");
        String password=pwdEncoder.encode(PW);
        System.out.println(password);
		String mem_mobile=req.getParameter("mobile");
		System.out.println(mem_mobile);
		String mem_address=req.getParameter("address");
		System.out.println(mem_address);
		String mem_email=req.getParameter("email");
		System.out.println(mem_email);
		dao.mem_update(ID,password,mem_mobile,mem_address,mem_email);
		return "redirect:/member/mypage/myinfo";
	}
	
	
	
	  //회원탈퇴 페이지
	  
	  @RequestMapping(value = "/mypage/mem_delpage", method = RequestMethod.GET)
	  public String mem_deletepage(Locale locale,Model model) {		  
		  return "/member_mypage/mem_delete"; 
	  } //회원탈퇴
	  
	  @RequestMapping(value = "/mypage/mem_delete", method = RequestMethod.GET)
	  public String mem_delete(Principal principal,Model model,HttpServletRequest req){
		  String ID=principal.getName(); System.out.println(ID); IDao
		  dao=sqlSession.getMapper(IDao.class); System.out.println("Idao : "+dao);
		  dao.mem_delete(ID); HttpSession session = req.getSession();
		  session.invalidate(); 
		  return "/"; 
	  }
	 
	
//	//로그인 페이지
	@RequestMapping(value = "/mem_login", method = RequestMethod.GET)
	public void loginInput(String error, String logout) {
		
		logger.info("error: " + error);
		logger.info("logout: " + logout);
	
	}
//	//로그아웃 페이지
//	@RequestMapping(value = "mypage/mem_logout", method = RequestMethod.GET)
//	public String logoutInput(String error, String logout) {
//		
//		logger.info("error: " + error);
//		logger.info("logout: " + logout);
//		return "member_mypage/mem_logout";
//	}
	
	//로그인 완료 : main page
}