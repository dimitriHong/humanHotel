package javalec.hotel.hpro.hotelDTO;

public class hDTO {
   //roommanage(관리자-객실관리)
   private int room_id;
   private String room_name;
   private String room_type;
   private int max_guestnum;
   private int room_price;
   //roommanage(관리자-객실관리 끝)
   
   //bookmanage(예약관리)
   private int book_id;
   private String book_name;
   private String book_mobile;
   private int book_cusnum;
   private String book_sum;
   private String book_checkin;
   private String book_checkout;
   private String book_rname;
   private String book_rtype;
   private int book_useP;
   private int book_addP;
   private int oneday_pay;
   private int max_cusnum;
   private String booking_date;
   //bookmanage(예약관리 끝)
   
   //adminmanage(관리자-직원계정관리)
   private String emp_name;
   private String emp_id;
   private String emp_pw;
   private String emp_mobile;
   private String emp_part;
   private int emp_level;
   private String emp_date;
   //adminmanage(관리자-직원계정관리 끝)
   
   //membarmanage(휴먼멤버스 관리)
   private String NAME;
   private int mem_number;
   private String mem_mobile;
   private String ID;
   private String PASSWORD;
   private String mem_tier;
   private String mem_point;
   private String mem_address;
   private String mem_email;
   private String mem_date;
   //membarmanage(휴먼멤버스 관리 끝)
   
   //Hnoticeboard(공지게시판)
   private int notice_id;
   private String notice_title;
   private String notice_hit;
   private String notice_content;
   private String notice_date;
   //Hnoticeboard(공지게시판 끝)
   
   //Hreviewboard(리뷰게시판)
   private int review_id;
   private String review_title;
   private String review_hit;
   private String review_content;
   private String review_date;
   private String review_name;
   private String review_pw;
   //Hreviewboard(리뷰게시판 끝)
   
   //Hquestionboard(1대1문의)
   private int question_id;
   private String question_list;
   private String question_title;
   private String question_content;
   private String question_date;
   private String question_name;
   private String question_mail;
   private String question_mobile;
   private String question_nc;
   private String question_sl;
   //Hquestionboard(1대1문의 끝)
   
   public hDTO() {}

public int getRoom_id() {
	return room_id;
}

public String getRoom_name() {
	return room_name;
}

public String getRoom_type() {
	return room_type;
}

public int getMax_guestnum() {
	return max_guestnum;
}

public int getRoom_price() {
	return room_price;
}

public int getBook_id() {
	return book_id;
}

public String getBook_name() {
	return book_name;
}

public String getBook_mobile() {
	return book_mobile;
}

public int getBook_cusnum() {
	return book_cusnum;
}

public String getBook_sum() {
	return book_sum;
}

public String getBook_checkin() {
	return book_checkin;
}

public String getBook_checkout() {
	return book_checkout;
}

public String getBook_rname() {
	return book_rname;
}

public String getBook_rtype() {
	return book_rtype;
}

public int getBook_useP() {
	return book_useP;
}

public int getBook_addP() {
	return book_addP;
}

public int getOneday_pay() {
	return oneday_pay;
}

public int getMax_cusnum() {
	return max_cusnum;
}

public String getEmp_name() {
	return emp_name;
}

public String getEmp_id() {
	return emp_id;
}

public String getEmp_pw() {
	return emp_pw;
}

public String getEmp_mobile() {
	return emp_mobile;
}

public String getEmp_part() {
	return emp_part;
}

public int getEmp_level() {
	return emp_level;
}

public String getEmp_date() {
	return emp_date;
}

public String getNAME() {
	return NAME;
}

public int getMem_number() {
	return mem_number;
}

public String getMem_mobile() {
	return mem_mobile;
}

public String getID() {
	return ID;
}

public String getPASSWORD() {
	return PASSWORD;
}

public String getMem_tier() {
	return mem_tier;
}

public String getMem_point() {
	return mem_point;
}

public String getMem_address() {
	return mem_address;
}

public String getMem_email() {
	return mem_email;
}

public String getMem_date() {
	return mem_date;
}

public int getNotice_id() {
	return notice_id;
}

public String getNotice_title() {
	return notice_title;
}

public String getNotice_hit() {
	return notice_hit;
}

public String getNotice_content() {
	return notice_content;
}

public String getNotice_date() {
	return notice_date;
}

public int getReview_id() {
	return review_id;
}

public String getReview_title() {
	return review_title;
}

public String getReview_hit() {
	return review_hit;
}

public String getReview_content() {
	return review_content;
}

public String getReview_date() {
	return review_date;
}

public String getReview_name() {
	return review_name;
}

public String getReview_pw() {
	return review_pw;
}

public int getQuestion_id() {
	return question_id;
}

public String getQuestion_list() {
	return question_list;
}

public String getQuestion_title() {
	return question_title;
}

public String getQuestion_content() {
	return question_content;
}

public String getQuestion_date() {
	return question_date;
}

public String getQuestion_name() {
	return question_name;
}

public String getQuestion_mail() {
	return question_mail;
}

public String getQuestion_mobile() {
	return question_mobile;
}

public String getQuestion_nc() {
	return question_nc;
}

public String getQuestion_sl() {
	return question_sl;
}

public void setRoom_id(int room_id) {
	this.room_id = room_id;
}

public void setRoom_name(String room_name) {
	this.room_name = room_name;
}

public void setRoom_type(String room_type) {
	this.room_type = room_type;
}

public void setMax_guestnum(int max_guestnum) {
	this.max_guestnum = max_guestnum;
}

public void setRoom_price(int room_price) {
	this.room_price = room_price;
}

public void setBook_id(int book_id) {
	this.book_id = book_id;
}

public void setBook_name(String book_name) {
	this.book_name = book_name;
}

public void setBook_mobile(String book_mobile) {
	this.book_mobile = book_mobile;
}

public void setBook_cusnum(int book_cusnum) {
	this.book_cusnum = book_cusnum;
}

public void setBook_sum(String book_sum) {
	this.book_sum = book_sum;
}

public void setBook_checkin(String book_checkin) {
	this.book_checkin = book_checkin;
}

public void setBook_checkout(String book_checkout) {
	this.book_checkout = book_checkout;
}

public void setBook_rname(String book_rname) {
	this.book_rname = book_rname;
}

public void setBook_rtype(String book_rtype) {
	this.book_rtype = book_rtype;
}

public void setBook_useP(int book_useP) {
	this.book_useP = book_useP;
}

public void setBook_addP(int book_addP) {
	this.book_addP = book_addP;
}

public void setOneday_pay(int oneday_pay) {
	this.oneday_pay = oneday_pay;
}

public void setMax_cusnum(int max_cusnum) {
	this.max_cusnum = max_cusnum;
}

public void setEmp_name(String emp_name) {
	this.emp_name = emp_name;
}

public void setEmp_id(String emp_id) {
	this.emp_id = emp_id;
}

public void setEmp_pw(String emp_pw) {
	this.emp_pw = emp_pw;
}

public void setEmp_mobile(String emp_mobile) {
	this.emp_mobile = emp_mobile;
}

public void setEmp_part(String emp_part) {
	this.emp_part = emp_part;
}

public void setEmp_level(int emp_level) {
	this.emp_level = emp_level;
}

public void setEmp_date(String emp_date) {
	this.emp_date = emp_date;
}

public void setNAME(String NAME) {
	this.NAME= NAME;
}

public void setMem_number(int mem_number) {
	this.mem_number = mem_number;
}

public void setMem_mobile(String mem_mobile) {
	this.mem_mobile = mem_mobile;
}

public void setID(String ID) {
	this.ID = ID;
}

public void setPASSWORD(String PASSWORD) {
	this.PASSWORD = PASSWORD;
}

public void setMem_tier(String mem_tier) {
	this.mem_tier = mem_tier;
}

public void setMem_point(String mem_point) {
	this.mem_point = mem_point;
}

public void setMem_address(String mem_address) {
	this.mem_address = mem_address;
}

public void setMem_email(String mem_email) {
	this.mem_email = mem_email;
}

public void setMem_date(String mem_date) {
	this.mem_date = mem_date;
}

public void setNotice_id(int notice_id) {
	this.notice_id = notice_id;
}

public void setNotice_title(String notice_title) {
	this.notice_title = notice_title;
}

public void setNotice_hit(String notice_hit) {
	this.notice_hit = notice_hit;
}

public void setNotice_content(String notice_content) {
	this.notice_content = notice_content;
}

public void setNotice_date(String notice_date) {
	this.notice_date = notice_date;
}

public void setReview_id(int review_id) {
	this.review_id = review_id;
}

public void setReview_title(String review_title) {
	this.review_title = review_title;
}

public void setReview_hit(String review_hit) {
	this.review_hit = review_hit;
}

public void setReview_content(String review_content) {
	this.review_content = review_content;
}

public void setReview_date(String review_date) {
	this.review_date = review_date;
}

public void setReview_name(String review_name) {
	this.review_name = review_name;
}

public void setReview_pw(String review_pw) {
	this.review_pw = review_pw;
}

public void setQuestion_id(int question_id) {
	this.question_id = question_id;
}

public void setQuestion_list(String question_list) {
	this.question_list = question_list;
}

public void setQuestion_title(String question_title) {
	this.question_title = question_title;
}

public void setQuestion_content(String question_content) {
	this.question_content = question_content;
}

public void setQuestion_date(String question_date) {
	this.question_date = question_date;
}

public void setQuestion_name(String question_name) {
	this.question_name = question_name;
}

public void setQuestion_mail(String question_mail) {
	this.question_mail = question_mail;
}

public void setQuestion_mobile(String question_mobile) {
	this.question_mobile = question_mobile;
}

public void setQuestion_nc(String question_nc) {
	this.question_nc = question_nc;
}

public void setQuestion_sl(String question_sl) {
	this.question_sl = question_sl;
}

public String getBooking_date() {
	return booking_date;
}

public void setBooking_date(String booking_date) {
	this.booking_date = booking_date;
}


}