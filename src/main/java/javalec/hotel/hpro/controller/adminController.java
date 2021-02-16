package javalec.hotel.hpro.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javalec.hotel.hpro.hotelDTO.hDTO;
import javalec.hotel.hpro.hotelDAO.IDao;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/admin", method = {RequestMethod.POST,RequestMethod.GET})
public class adminController {
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/" )
	public String adminlogin() {

		return "/admin/adminlogin";
	}	
	@RequestMapping(value="/admincheck")
	public String doCheck(HttpServletRequest req,Model model,RedirectAttributes rttr) {
		String userid=req.getParameter("id");
		String passcode=req.getParameter("pw");
		HttpSession session = req.getSession();
		IDao dao = sqlSession.getMapper(IDao.class);
		int cnt = dao.adminCheck(userid, passcode);
		if(cnt==1) {
			session.setAttribute("uid", userid);
			return "redirect:/admin/adminmain";
		}else {
			rttr.addFlashAttribute("msg","loginfail");
		}
		return "redirect:/admin/";
	}	
	@RequestMapping(value = "/adminout")
	public String adminout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/admin/";
	}
	
	@RequestMapping(value = "/adminmain")
	public String adminmain(HttpServletRequest req, Model model, RedirectAttributes rttr) {
		HttpSession session=req.getSession();
		if(session.getAttribute("uid")==null) {
			rttr.addFlashAttribute("msg","nosession");
			return "redirect:/admin/";
		}
		return "/admin/AdminMain";
	}
	
	
	@RequestMapping(value = "/roommanage")
	public String roommanage(HttpServletRequest req, Model model,RedirectAttributes rttr) {
		HttpSession session=req.getSession();
		if(session.getAttribute("uid")==null) {
			rttr.addFlashAttribute("msg","nosession");
			return "redirect:/admin/";
		}
		return "/admin/RoomManage";
	}
	@RequestMapping(value = "/roomsearch")
	@ResponseBody
	public ArrayList<hDTO> roomsearch(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.roomlist();
	}
	@RequestMapping(value = "/roomsearch1")
	@ResponseBody
	public ArrayList<hDTO> roomsearch1(HttpServletRequest req) {
		String roomname=req.getParameter("roomname");
		roomname = "%"+roomname+"%" ;
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.roomlist1(roomname);
	}
	@RequestMapping(value = "/roomsearch2")
	@ResponseBody
	public ArrayList<hDTO> roomsearch2(HttpServletRequest req) {
		String roomtype=req.getParameter("roomtype");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.roomlist2(roomtype);
	}
	@RequestMapping(value = "/roomsearchA")
	@ResponseBody
	public int roomsearchA(HttpServletRequest req) {
		String roomname=req.getParameter("roomname");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.roomlistA(roomname);
	}
	@RequestMapping(value = "/roominsert")
	public String roominsert(HttpServletRequest req) {
		String roomname=req.getParameter("roomname");
		String roomtype=req.getParameter("roomtype");
		String maxguestnum=req.getParameter("numcus");
		String roomprice=req.getParameter("onepay");
		int maxguestnum2 = Integer.parseInt(maxguestnum);
		int roomprice2 = Integer.parseInt(roomprice);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.roominsert(roomname, roomtype, maxguestnum2,roomprice2);
		return "redirect:/admin/roommanage";
	}
	@RequestMapping(value = "/roomupdate")
	public String roomupdate(HttpServletRequest req) {
		String roomname=req.getParameter("roomname");
		String roomtype=req.getParameter("roomtype");
		String maxguestnum=req.getParameter("numcus");
		String roomprice=req.getParameter("onepay");
		String roomid=req.getParameter("roomid");
		int maxguestnum2 = Integer.parseInt(maxguestnum);
		int roomprice2 = Integer.parseInt(roomprice);
		int roomid2 = Integer.parseInt(roomid);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.roomupdate(roomname, roomtype, maxguestnum2,roomprice2,roomid2);
		return "redirect:/admin/roommanage";
	}
	@RequestMapping(value = "/roomdelete")
	public String roomdelete(HttpServletRequest req) {
		String roomid=req.getParameter("roomid");
		int roomid2 = Integer.parseInt(roomid);
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.roomdelete(roomid2);
		return "redirect:/admin/roommanage";
	}
	
	
	@RequestMapping(value = "/bookmanage")
	public String bookmanage(HttpServletRequest req, Model model,RedirectAttributes rttr) {
		HttpSession session=req.getSession();
		if(session.getAttribute("uid")==null) {
			rttr.addFlashAttribute("msg","nosession");
			return "redirect:/admin/";
		}
		return "/admin/BookManage";
	}
	@RequestMapping(value = "/booksearch")
	@ResponseBody
	public ArrayList<hDTO> booksearch(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.booksearch();
	}
	@RequestMapping(value = "/booksearch1")
	@ResponseBody
	public ArrayList<hDTO> booksearch1(HttpServletRequest req) {
		String checkindate=req.getParameter("checkindate");
		String checkoutdate=req.getParameter("checkoutdate");
		String roomtype1=req.getParameter("roomtype1");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.booksearch1(checkindate,checkoutdate,roomtype1);
	}
	@RequestMapping(value = "/booksearchA")
	@ResponseBody
	public ArrayList<hDTO> booksearchA(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.booksearchA(cusname,cusmobile);
	}
	@RequestMapping(value = "/booksearchB")
	@ResponseBody
	public ArrayList<hDTO> booksearchB(HttpServletRequest req) {
		String checkindate=req.getParameter("checkindate");
		String checkoutdate=req.getParameter("checkoutdate");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.booksearchB(checkindate,checkoutdate);
	}
	@RequestMapping(value = "/memsearch")
	@ResponseBody
	public ArrayList<hDTO> memsearch(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.memsearch(cusname, cusmobile);
	}
	@RequestMapping(value = "/bookinsert")
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
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookinsertMadd")
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
		dao.bookinsertMadd(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname,roomtype,cusnum,cussum,cuspoint,oneday_pay,max_cusnum);
		dao.memPadd(cusname, cusmobile,cuspoint);
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookinsertMuse")
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
		dao.bookinsertMuse(cusname, checkindate2, checkoutdate2,cusmobile,cusroomname,roomtype,cusnum,cussum,usepoint,oneday_pay,max_cusnum);
		dao.memPuse(cusname, cusmobile,usepoint);
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookupdate")
	public String bookupdate(HttpServletRequest req) {
		String book_id=req.getParameter("bookid");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.bookupdate(checkindate2,checkoutdate2,cusnum,cussum,book_id);
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookupdateAddP")
	public String bookupdateAddP(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		String oldPoint=req.getParameter("oldPoint");
		String newPoint=req.getParameter("newPoint");
		String useoldpoint=req.getParameter("useoldpoint");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		String book_id=req.getParameter("bookid");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.rollbackMem2(newPoint,oldPoint,cusname,cusmobile,useoldpoint);
		dao.bookupdateAddP(checkindate2,checkoutdate2,cusnum,cussum,newPoint,book_id);
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookupdateuseP")
	public String bookupdateuseP(HttpServletRequest req) {
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		String oldusepoint=req.getParameter("oldusepoint");
		String oldaddpoint=req.getParameter("oldaddpoint");
		String newusepoint=req.getParameter("newusepoint");
		String checkindate2=req.getParameter("checkindate2");
		String checkoutdate2=req.getParameter("checkoutdate2");
		String cusnum=req.getParameter("cusnum");
		String cussum=req.getParameter("cussum");
		String book_id=req.getParameter("bookid");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.rollbackMem3(oldusepoint,oldaddpoint,cusname,cusmobile,newusepoint);
		dao.bookupdateUseP(checkindate2,checkoutdate2,cusnum,cussum,newusepoint,book_id);
		return "redirect:/admin/bookmanage";
	}
	@RequestMapping(value = "/bookdelete")
	public String bookdelete(HttpServletRequest req) {
		String bookid=req.getParameter("bookid");
		String cusname=req.getParameter("cusname");
		String cusmobile=req.getParameter("cusmobile");
		String addpoint=req.getParameter("addpoint");
		String usepoint=req.getParameter("usepoint");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.rollbackMem(addpoint,usepoint,cusname,cusmobile);
		dao.bookdelete(bookid);
		return "redirect:/admin/bookmanage";
	}
	
	@RequestMapping(value = "/adminmanage")
	public String adminmanage(HttpServletRequest req, Model model,RedirectAttributes rttr) {
		HttpSession session=req.getSession();
		if(session.getAttribute("uid")==null) {
			rttr.addFlashAttribute("msg","nosession");
			return "redirect:/admin/";
		}
		return "/admin/AdminManage";
	}
	@RequestMapping(value = "/adminsearch")
	@ResponseBody
	public ArrayList<hDTO> adminsearch(HttpServletRequest req) {
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.adminsearch();
	}
	@RequestMapping(value = "/adminsearch1")
	@ResponseBody
	public ArrayList<hDTO> adminsearch1(HttpServletRequest req) {
		String staffName=req.getParameter("staffName");
		staffName = "%"+staffName+"%" ;
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.adminsearch1(staffName);
	}
	@RequestMapping(value = "/adminsearch2")
	@ResponseBody
	public ArrayList<hDTO> adminsearch2(HttpServletRequest req) {
		String ManagePart=req.getParameter("ManagePart");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.adminsearch2(ManagePart);
	}
	@RequestMapping(value = "/adminsearchA")
	@ResponseBody
	public int adminsearchA(HttpServletRequest req) {
		String staffId=req.getParameter("staffId");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.adminsearchA(staffId);
	}
	@RequestMapping(value = "/admininsert")
	public String admininsert(HttpServletRequest req) {
		String staffName=req.getParameter("staffName");
		String staffMobile=req.getParameter("staffMobile");
		String staffId=req.getParameter("staffId");
		String staffPw=req.getParameter("staffPw");
		String ManagePart=req.getParameter("ManagePart");
		String ManageLevel=req.getParameter("ManageLevel");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.admininsert(staffName, staffMobile, staffId,staffPw,ManagePart,ManageLevel);
		return "redirect:/admin/memebermanage";
	}
	@RequestMapping(value = "/adminupdate")
	public String adminupdate(HttpServletRequest req) {
		String staffMobile=req.getParameter("staffMobile");
		String staffPw=req.getParameter("staffPw");
		String ManagePart=req.getParameter("ManagePart");
		String ManageLevel=req.getParameter("ManageLevel");
		String staffId=req.getParameter("staffId");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.adminupdate(staffMobile,staffPw,ManagePart,ManageLevel,staffId);
		return "redirect:/admin/memebermanage";
	}
	@RequestMapping(value = "/admindelete")
	public String admindelete(HttpServletRequest req) {
		String staffId=req.getParameter("staffId");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.admindelete(staffId);
		return "redirect:/admin/roommanage";
	}
	
	@RequestMapping(value = "/memebermanage")
	public String membarshipmanage(HttpServletRequest req, Model model,RedirectAttributes rttr) {
		HttpSession session=req.getSession();
		if(session.getAttribute("uid")==null) {
			rttr.addFlashAttribute("msg","nosession");
			return "redirect:/admin/";
		}
		return "/admin/MemberShipManage";
	}
	@RequestMapping(value = "/membersearch")
	@ResponseBody
	public ArrayList<hDTO> membersearch() {
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.membersearch();
	}
	@RequestMapping(value = "/membersearch1")
	@ResponseBody
	public ArrayList<hDTO> membersearch1(HttpServletRequest req) {
		String memberName=req.getParameter("memberName");
		memberName = "%"+memberName+"%" ;
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.membersearch1(memberName);
	}
	@RequestMapping(value = "/membersearch2")
	@ResponseBody
	public ArrayList<hDTO> membersearch2(HttpServletRequest req) {
		String MemberTier=req.getParameter("MemberTier");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.membersearch2(MemberTier);
	}
	@RequestMapping(value = "/membersearchA")
	@ResponseBody
	public int membersearchA(HttpServletRequest req) {
		String memberID=req.getParameter("memberID");
		IDao dao = sqlSession.getMapper(IDao.class);
		return dao.membersearchA(memberID);
	}
	@RequestMapping(value = "/memberinsert")
	public String memberinsert(HttpServletRequest req) {
		String memberName=req.getParameter("memberName");
		String memberMobile=req.getParameter("memberMobile");
		String memberID=req.getParameter("memberID");
		String memberPW=req.getParameter("memberPW");
		String memberAdress=req.getParameter("memberAdress");
		String memberEmail=req.getParameter("memberEmail");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memberinsert(memberName, memberMobile, memberID,memberPW,memberAdress,memberEmail);
		return "redirect:/admin/memebermanage";
	}
	@RequestMapping(value = "/memberupdate")
	public String memberupdate(HttpServletRequest req) {
		String memberMobile=req.getParameter("memberMobile");
		String MemberTier=req.getParameter("MemberTier");
		String memberPW=req.getParameter("memberPW");
		String memberAdress=req.getParameter("memberAdress");
		String memberEmail=req.getParameter("memberEmail");
		String memberID=req.getParameter("memberID");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memberupdate(memberMobile, MemberTier, memberPW,memberAdress,memberEmail,memberID);
		return "redirect:/admin/memebermanage";
	}
	@RequestMapping(value = "/memberdelete")
	public String memberdelete(HttpServletRequest req) {
		String memberID=req.getParameter("memberID");
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.memberdelete(memberID);
		return "redirect:/admin/roommanage";
	}
}
