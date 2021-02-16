package javalec.hotel.hpro.hotelDAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javalec.hotel.hpro.common.Pagination;
import javalec.hotel.hpro.hotelDTO.ReplyVO;
import javalec.hotel.hpro.hotelDTO.UserDTO;
import javalec.hotel.hpro.hotelDTO.hDTO;

public interface IDao {
	
	//이성규님
	public int adminCheck(String userid, String passcode);
	public ArrayList<hDTO> roomlist();
	public ArrayList<hDTO> roomlist1(String roomname);
	public ArrayList<hDTO> roomlist2(String roomtype);
	public int roomlistA(String roomname);
	public void roominsert(String roomname, String roomtype, int maxguestnum2, int roomprice2);
	public void roomupdate(String roomname, String roomtype, int maxguestnum2, int roomprice2, int roomid2);
	public void roomdelete(int roomid2);
	public ArrayList<hDTO> membersearch();
	public ArrayList<hDTO> membersearch1(String memberName);
	public ArrayList<hDTO> membersearch2(String memberTier);
	public int membersearchA(String memberID);
	public void memberinsert(String memberName, String memberMobile, String memberID, String memberPW,String memberAdress, String memberEmail);
	public void memberupdate(String memberMobile, String memberTier, String memberPW, String memberAdress, String memberEmail,String memberID);
	public void memberdelete(String memberID);
	public ArrayList<hDTO> adminsearch();
	public ArrayList<hDTO> adminsearch1(String staffName);
	public ArrayList<hDTO> adminsearch2(String managePart);
	public int adminsearchA(String staffId);
	public void admininsert(String staffName, String staffMobile, String staffId, String staffPw, String managePart, String manageLevel);
	public void adminupdate(String staffMobile, String staffPw, String managePart, String manageLevel, String staffId);
	public void admindelete(String staffId);
	public ArrayList<hDTO> booksearch();
	public ArrayList<hDTO> booksearch1(String checkindate, String checkoutdate, String roomtype1);
	public ArrayList<hDTO> booksearchA(String cusname, String cusmobile);
	public ArrayList<hDTO> booksearchB(String checkindate, String checkoutdate);
	public ArrayList<hDTO> memsearch(String cusname, String cusmobile);
	public void bookinsert(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String oneday_pay, String max_cusnum);
	public void bookinsertMadd(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String cuspoint, String oneday_pay, String max_cusnum);
	public void memPadd(String cusname, String cusmobile, String cuspoint);
	public void bookinsertMuse(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String usepoint, String oneday_pay, String max_cusnum);
	public void memPuse(String cusname, String cusmobile, String usepoint);
	public void rollbackMem(String addpoint, String usepoint, String cusname, String cusmobile);
	public void bookdelete(String bookid);
	public void bookupdate(String checkindate2, String checkoutdate2, String cusnum, String cusname, String book_id);
	public void bookupdateAddP(String checkindate2, String checkoutdate2, String cusnum, String cussum, String newPoint,
			String cusname);
	public void rollbackMem2(String newPoint, String oldPoint, String cusname, String cusmobile, String useoldpoint);
	public void rollbackMem3(String oldusepoint, String oldaddpoint, String cusname, String cusmobile,
			String newusepoint);
	public void bookupdateUseP(String checkindate2, String checkoutdate2, String cusnum, String cussum,
			String newusepoint, String cusname);
	public void bookinsert2(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String oneday_pay, String max_cusnum);
	public void bookinsertMadd2(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String cuspoint, String oneday_pay,
			String max_cusnum);
	public void bookinsertMuse2(String cusname, String checkindate2, String checkoutdate2, String cusmobile,
			String cusroomname, String roomtype, String cusnum, String cussum, String usepoint, String oneday_pay,
			String max_cusnum);
	public String selectID(String cusname, String checkindate2, String checkoutdate2, String cusmobile, String cusroomname);
	public ArrayList<hDTO> booksearchS(String reserveID, String cusname, String cusmobile);
	
	//민주홍님
	public ArrayList<hDTO> question();
	public hDTO content(int question_id);
	public void question_write(String question_list,String question_title,String question_content,String question_name,String question_mail,String question_mobile,String question_nc,String question_sl);
	public void question_delete(int question_id);
	public hDTO myinfo(String mem_id);
	public void review_write(String title,String content,String name,String password);
	public ArrayList<hDTO> review_list(Pagination pagination);
	public hDTO review_content(int review_id);
	public void review_update(String review_title,String review_content,int review_id);
	public void review_delete(int review_id);
	public void review_Cnt(int review_id);
	public int pw_chk(int review_id,String review_pw);
	//후기게시판 댓글
	public List<ReplyVO> getReplyList(int bid) throws Exception;
	public int saveReply(ReplyVO replyVO) throws Exception;
	public int updateReply(ReplyVO replyVO) throws Exception;
	public int deleteReply(int rid) throws Exception;
	
	//후기게시판 페이징
	//총 게시글 개수 확인
	public int getBoardListCnt() throws Exception;
	
	//로그인 SECURITY
	public UserDTO mypage(String ID);
	public void mem_join(String id,String password,String name,String address, String email,String mobile);
//	public void mem_update(String ID,String password,String mem_mobile,String mem_address,String mem_email);
//	public void mem_delete(String ID);
	
	
	
	
		
	
	
	
	


	
	
	
	

	


	
	

	

	
	//백송이님
	
	
	//우정국님
}
