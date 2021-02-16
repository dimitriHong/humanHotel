package javalec.hotel.hpro.hotelDTO;

public class UserDTO {

	   private String ID;
	   private String PASSWORD;
	   private String NAME;
	   private String mem_tier;
	   private String mem_point;
	   private String mem_address;
	   private String mem_email;
	   private String mem_date;
	   private int mem_number;
	   private String mem_mobile;
	   
	   UserDTO(){}

	public UserDTO(String iD, String pASSWORD, String nAME, String mem_tier, String mem_point, String mem_address,
			String mem_email, String mem_date, int mem_number, String mem_mobile) {
		super();
		ID = iD;
		PASSWORD = pASSWORD;
		NAME = nAME;
		this.mem_tier = mem_tier;
		this.mem_point = mem_point;
		this.mem_address = mem_address;
		this.mem_email = mem_email;
		this.mem_date = mem_date;
		this.mem_number = mem_number;
		this.mem_mobile = mem_mobile;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPASSWORD() {
		return PASSWORD;
	}

	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}

	public String getNAME() {
		return NAME;
	}

	public void setNAME(String nAME) {
		NAME = nAME;
	}

	public String getMem_tier() {
		return mem_tier;
	}

	public void setMem_tier(String mem_tier) {
		this.mem_tier = mem_tier;
	}

	public String getMem_point() {
		return mem_point;
	}

	public void setMem_point(String mem_point) {
		this.mem_point = mem_point;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_date() {
		return mem_date;
	}

	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}

	public int getMem_number() {
		return mem_number;
	}

	public void setMem_number(int mem_number) {
		this.mem_number = mem_number;
	}

	public String getMem_mobile() {
		return mem_mobile;
	}

	public void setMem_mobile(String mem_mobile) {
		this.mem_mobile = mem_mobile;
	}

	@Override
	public String toString() {
		return "UserDTO [ID=" + ID + ", PASSWORD=" + PASSWORD + ", NAME=" + NAME + ", mem_tier=" + mem_tier
				+ ", mem_point=" + mem_point + ", mem_address=" + mem_address + ", mem_email=" + mem_email
				+ ", mem_date=" + mem_date + ", mem_number=" + mem_number + ", mem_mobile=" + mem_mobile + "]";
	}
	   
}
