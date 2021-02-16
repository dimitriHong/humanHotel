package javalec.hotel.hpro.controller;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javalec.hotel.hpro.hotelDAO.IDao;
import javalec.hotel.hpro.hotelDTO.hDTO;

/**
 * Handles requests for the application home page.
 */
@Controller

public class MainController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String hotelmain(Locale locale, Model model) {
		
		return "/Main/main";
	}
	@RequestMapping(value = "/introduce", method = RequestMethod.GET)
	public String hotelintro(Locale locale, Model model) {
		
		return "/Main/introduce";
	}
	@RequestMapping(value = "/roomlist", method = RequestMethod.GET)
	public String hotelroomlist(Locale locale, Model model) {
		
		return "/Main/hRoom_list";
	}
	@RequestMapping(value = "/deluxe", method = RequestMethod.GET)
	public String hoteldeluxe(Locale locale, Model model) {
		
		return "/Main/hRoom_deluxe";
	}
	@RequestMapping(value = "/junior", method = RequestMethod.GET)
	public String hoteljunior(Locale locale, Model model) {
		
		return "/Main/hRoom_junior";
	}
	@RequestMapping(value = "/residence", method = RequestMethod.GET)
	public String hRoom_residence(Locale locale, Model model) {
		
		return "/Main/hRoom_residence";
	}
	@RequestMapping(value = "/royal", method = RequestMethod.GET)
	public String hotelroyal(Locale locale, Model model) {
		
		return "/Main/hRoom_royal";
	}
	@RequestMapping(value = "/double", method = RequestMethod.GET)
	public String hoteldouble(Locale locale, Model model) {
		
		return "/Main/hRoom_st_double";
	}
	@RequestMapping(value = "/twin", method = RequestMethod.GET)
	public String hoteltwin(Locale locale, Model model) {
		
		return "/Main/hRoom_st_twin";
	}
	@RequestMapping(value = "/waytocome", method = RequestMethod.GET)
	public String waytocome(Locale locale, Model model) {
		
		return "/Main/waytocome";
	}
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) {
		
		return "/reservation/reservateMain";
	}
	@RequestMapping(value = "/bookinsert")
	@ResponseBody
	public String bookinsert(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusmobile=req.getParameter("cusmobile");
		String cusroomname=req.getParameter("cusroomname");
		String roomtype=req.getParameter("roomtype");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		String oneday_pay=req.getParameter("oneday_pay");
		String max_cusnum=req.getParameter("max_cusnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.bookinsert(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname,roomtype,cusnum,cussum,oneday_pay,max_cusnum);		
		return dao.selectID(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname);
	}
	@RequestMapping(value = "/bookinsertMadd")
	@ResponseBody
	public String bookinsertMadd(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusmobile=req.getParameter("cusmobile");
		String cusroomname=req.getParameter("cusroomname");
		String roomtype=req.getParameter("roomtype");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		String cuspoint=req.getParameter("cuspoint");
		String oneday_pay=req.getParameter("oneday_pay");
		String max_cusnum=req.getParameter("max_cusnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memPadd(cusname, cusmobile,cuspoint);
		dao.bookinsertMadd(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname,roomtype,cusnum,cussum,cuspoint,oneday_pay,max_cusnum);
		return dao.selectID(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname);
	}
	@RequestMapping(value = "/bookinsertMuse")
	@ResponseBody
	public String bookinsertMuse(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusmobile=req.getParameter("cusmobile");
		String cusroomname=req.getParameter("cusroomname");
		String roomtype=req.getParameter("roomtype");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		String usepoint=req.getParameter("usepoint");
		String oneday_pay=req.getParameter("oneday_pay");
		String max_cusnum=req.getParameter("max_cusnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memPuse(cusname, cusmobile,usepoint);
		dao.bookinsertMuse(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname,roomtype,cusnum,cussum,usepoint,oneday_pay,max_cusnum);
		return dao.selectID(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname);
	}
	@RequestMapping(value = "/reservateSearch", method = RequestMethod.GET)
	public String reservateResult(Model model) {
		return "/reservation/reservateSearch";
	}
	@RequestMapping(value = "/booksearchS")
	@ResponseBody
	public ArrayList<hDTO> booksearchS(HttpServletRequest req) {
		String reserveID=req.getParameter("reserveID");
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.booksearchS(reserveID,cusname,cusmobile);
	}
}
