package javalec.hotel.hpro.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import javalec.hotel.hpro.hotelDTO.ReplyVO;
import javalec.hotel.hpro.hotelDTO.hDTO;
import javalec.hotel.hpro.common.Pagination;
import javalec.hotel.hpro.hotelDAO.IDao;
/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	private SqlSession sqlSession;
   //공지게시판 컨트롤러
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String noticemain(Locale locale, Model model) {
      
      return "/notice/notice";
   }
   @RequestMapping(value = "/noticewrite", method = RequestMethod.GET)
   public String noticewrite(Locale locale, Model model) {
      
      return "/notice/write";
   }
   //공지게시판 컨트롤러 끝
   
   //<-- 후기게시판 컨트롤러 -->
   
   // 후기게시판 리스트
   @RequestMapping(value = "/review", method = RequestMethod.GET)
   public String review_lsit(Locale locale, Model model, @RequestParam(required = false, defaultValue = "1") int page, 
		   												@RequestParam(required = false, defaultValue = "1") int range) throws Exception{
	   System.out.println("review_list  동작");
	   IDao dao = sqlSession.getMapper(IDao.class);
	 //전체 게시글 개수
	   int listCnt = dao.getBoardListCnt();
	 //Pagination 객체생성
	   Pagination pagination = new Pagination();
	   pagination.pageInfo(page, range, listCnt);
	   model.addAttribute("pagination", pagination);
	   System.out.println(dao);
	  model.addAttribute("list", dao.review_list(pagination));
	  model.addAttribute("replyVO", new ReplyVO());
      return "/notice/review_list";
   }
   //후기 작성 페이지 이동
   @RequestMapping(value = "/review_write", method = RequestMethod.GET)
   public String review_write(Locale locale, Model model) {
      return "/notice/review_write";
   }
   //후기 등록 동작
   @RequestMapping(value = "/review_action", method = RequestMethod.POST)
   public String review_action(HttpServletRequest req, Model model) {
	  String title=req.getParameter("review_title");
	  String content=req.getParameter("review_content");
	  String name=req.getParameter("review_name");
	  String password=req.getParameter("review_password");
	  IDao dao = sqlSession.getMapper(IDao.class);
	  dao.review_write(title,content,name,password);
      return "redirect:/notice/review";
   }
   //후기 상세 페이지
   @RequestMapping(value = "/review_detail")
   public String review_detail(HttpServletRequest req, Model model) {
	      int id = Integer.parseInt(req.getParameter("review_id"));
	      System.out.println(id);
	      IDao dao=sqlSession.getMapper(IDao.class);
	      System.out.println(dao);
	      dao.review_Cnt(id);
	      hDTO dto = dao.review_content(id);
	      System.out.println(dto);
	      model.addAttribute("replyVO", new ReplyVO());
	      model.addAttribute("detail",dto);
      return "/notice/review_content";
   }
   //후기 수정 페이지 이동
   @RequestMapping(value = "/review_update_view", method = RequestMethod.GET)
   public String review_update(HttpServletRequest req, Model model) {
	      int id = Integer.parseInt(req.getParameter("review_id"));
	      System.out.println(id);
	      IDao dao=sqlSession.getMapper(IDao.class);
	      System.out.println(dao);
	      hDTO dto = dao.review_content(id);
	      System.out.println(dto);
	      model.addAttribute("detail",dto);
      return "/notice/review_update";
   }
   //후기 수정 동작
   @RequestMapping(value = "/review_update_action", method = RequestMethod.POST)
   public String review_update_action(HttpServletRequest req, Model model) {
	  int id = Integer.parseInt(req.getParameter("review_id")); 
	  String title=req.getParameter("review_title");
	  String content=req.getParameter("review_content");
	  System.out.println("update action id"+id);
	  IDao dao = sqlSession.getMapper(IDao.class);
	  dao.review_update(title,content,id);
      return "redirect:/notice/review";
   }
  
   @RequestMapping(value="/pw_page")
   public String review_pw_page(HttpServletRequest req,Model model) {
	   	  int id = Integer.parseInt(req.getParameter("review_id")); 
	   	  System.out.println(id);
	      IDao dao=sqlSession.getMapper(IDao.class);
	      System.out.println(dao);
	      hDTO dto = dao.review_content(id);
	      System.out.println(dto);
	      model.addAttribute("id",dto);
	   return "/notice/review_pw";
   }
   
   //비밀번호 확인 : 일치시 수정 으로 이동 불일치시 이전으로 이동
   @RequestMapping(value = "/review_pw", method = RequestMethod.POST)
   public String review_password(HttpServletRequest req, Model model) {
	   System.out.println("비밀번호 확인 동작");
	   IDao dao = sqlSession.getMapper(IDao.class);
	   int id = Integer.parseInt(req.getParameter("review_id"));
	   System.out.println(id);
	   String pw=req.getParameter("review_pw");
	   int count=dao.pw_chk(id, pw);
	   if(count==1) {
		      hDTO dto = dao.review_content(id);
		      model.addAttribute("detail",dto);
		      System.out.println("dto 값");
		   return "notice/review_update";
	   }else {
		   
		   return "redirect:/notice/review";
	   }
   }
   
   //후기 게시글 삭제
   @RequestMapping(value = "/review_delete", method = RequestMethod.GET)
   public String reviewrevise_(HttpServletRequest req,Model model) {
	   System.out.println("delete()");
	   int id = Integer.parseInt(req.getParameter("review_id"));
	   System.out.println(id);
	   IDao dao = sqlSession.getMapper(IDao.class);
	   System.out.println(dao);
	   dao.review_delete(id);
      return "redirect:/notice/review";
   }
   
   
   
   //후기게시판 댓글 저장
   @RequestMapping(value = "/saveReqly", method = RequestMethod.POST)
	public Map<String, Object> saveReply(@RequestBody ReplyVO replyVO) throws Exception {
		Map<String, Object> result = new HashMap<>();
		IDao dao = sqlSession.getMapper(IDao.class);
		try {
			dao.saveReply(replyVO);
			result.put("status", "OK");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("status", "False");
		}
		
		return result;
	}
   
   //후기게시판 컨트롤러 끝
   
   
   
   //1대1문의 컨트롤러
   @RequestMapping(value="/hquestion_write_view",method = RequestMethod.GET)
   public String hQuestion_view(HttpServletRequest req, Model model) {
	   System.out.println("write_view()");
	   return "/notice/hQuestion_CT";
   }
   @RequestMapping(value = "/hquestion_write", method = RequestMethod.POST)
	public String hquestion(HttpServletRequest req, Model model) {
		System.out.println("write()");
		
		String question_list =req.getParameter("question_list");
		System.out.println(question_list);
		String question_title=req.getParameter("question_title");
		System.out.println(question_title);
		String question_content=req.getParameter("question_content");
		System.out.println(question_content);
		String question_name=req.getParameter("question_name");
		System.out.println(question_name);
		String question_mail=req.getParameter("question_mail");
		System.out.println(question_mail);
		String question_mobile=req.getParameter("question_mobile");
		System.out.println(question_mobile);
		String question_nc=req.getParameter("question_nc");
		System.out.println(question_nc);
		String question_sl=req.getParameter("question_sl");
		System.out.println(question_sl);
		System.out.println("1");
		// BDao dao = new BDao();
		IDao dao = sqlSession.getMapper(IDao.class);
		System.out.println("2");
		dao.question_write(question_list,question_title,question_content,question_name,question_mail,question_mobile, question_nc, question_sl);
		System.out.println("3");
		return "/notice/question_complete";
	}
   @RequestMapping(value = "/hquestionlist", method = RequestMethod.GET)
   public String hquestionlist(Locale locale, Model model) {
	  IDao dao = sqlSession.getMapper(IDao.class);
	  model.addAttribute("question", dao.question());
	  System.out.println(model);
      return "/notice/hQuestion_MG_list";
   }
   @RequestMapping(value = "/hquestiondata")
   public String hquestiondata(HttpServletRequest req, Model model) {
	   	  System.out.println("content_view()");
	      int id = Integer.parseInt(req.getParameter("question_id"));
	      System.out.println(id);
	      IDao dao=sqlSession.getMapper(IDao.class);
	      System.out.println(dao);
	      hDTO dto = dao.content(id);
	      System.out.println(dto);
	      model.addAttribute("que_detail",dto);
      return "/notice/hQuestion_MG_data";
   }
   @RequestMapping(value="/hquestion_delete")
   public String hquestion_delete(HttpServletRequest req, Model model) {
	   System.out.println("delete()");
	   int id = Integer.parseInt(req.getParameter("question_id"));
	   System.out.println(id);
	   IDao dao = sqlSession.getMapper(IDao.class);
	   System.out.println(dao);
	   dao.question_delete(id);
	   return "/notice/hquestionlist";
   }
}