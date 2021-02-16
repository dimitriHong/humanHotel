package javalec.hotel.hpro.hotelDAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import javalec.hotel.hpro.hotelDTO.hDTO;
import javalec.hotel.hpro.util.Constant;

public class BDao {
	JdbcTemplate template=null;
	public BDao() {
		template=Constant.template;
	}
	/*
	public ArrayList<hDTO> roomlist() {
		ArrayList<hDTO> dtos = null;
		String query="select room_id,room_name,room_type,max_guestnum,room_price from HroomManage";
		dtos=(ArrayList<hDTO>)template.query(query, new BeanPropertyRowMapper<hDTO>(hDTO.class));
		return dtos;
	}
	public ArrayList<hDTO> roomlist1(final String roomname) {
		ArrayList<hDTO> dtos = null;
		String query="select room_id,room_name,room_type,max_guestnum,room_price from HroomManage where room_name like '"+roomname+"%'";
		dtos=(ArrayList<hDTO>)template.query(query, new BeanPropertyRowMapper<hDTO>(hDTO.class));
		return dtos;
	}
	public ArrayList<hDTO> roomlist2(final String roomtype) {
		ArrayList<hDTO> dtos = null;
		String query="select room_id,room_name,room_type,max_guestnum,room_price from HroomManage where room_type ='"+roomtype+"'";
		dtos=(ArrayList<hDTO>)template.query(query, new BeanPropertyRowMapper<hDTO>(hDTO.class));
		return dtos;
	}
	public void roominsert(final String roomname, final String roomtype, final int maxguestnum2, final int roomprice2) {
		String sql="insert into HroomManage (room_name,room_type,max_guestnum,room_price) values (?,?,?,?)";
		this.template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, roomname);
				ps.setString(2, roomtype);
				ps.setInt(3, maxguestnum2);
				ps.setInt(4, roomprice2);
			}
		});
	}
	public void roomupdate(final String roomname, final String roomtype, final int maxguestnum2, final int roomprice2, final int roomid2) {
		String sql="update HroomManage set room_name=?, room_type=?, max_guestnum=?, room_price=? where room_id=?";
		this.template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, roomname);
				ps.setString(2, roomtype);
				ps.setInt(3, maxguestnum2);
				ps.setInt(4, roomprice2);
				ps.setInt(5, roomid2);
			}
		});
	}
	public void roomdelete(final int roomid2) {
		String sql="delete from HroomManage where room_id=?";
		this.template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, roomid2);
			}
		});
	}
	/*
	public void modify(final int bId, final String bName, final String bTitle, final String bContent) {
		String sql="update mvc_board set bName=?, bTitle=?, bContent=? where bId=?";
		this.template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, bName);
				ps.setString(2, bTitle);
				ps.setString(3, bContent);
				ps.setInt(4, bId);
			}
		});
	}
	
	public void reply(String bId,String bName,String bTitle,String bContent,String bGroup,String bStep,String bIndent) {
		
	}
	public BDto contentView(int bId){
		BDto dto = null;
		// post�씫�뼱�삤湲� BDto�뿉 �꽔湲�
		String sql="select bId,bName,bTitle,bContent,bDate,bHit,bGroup,bStep,bIndent "+
					"from mvc_board where bId="+bId;
		return template.queryForObject(sql, new BeanPropertyRowMapper<BDto>(BDto.class));
	}
	public void delete(final int bId) {
		String sql= "delete from mvc_board where bId=?";
		this.template.update(sql,new PreparedStatementSetter() {
			
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, bId);
			}
			
		});
	}
	public void upHit(final int bId) {
		String sql="update mvc_board set bHit =bHit+1 where bId= ?";
		this.template.update(sql,new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1, bId);
			}
			
		});
	}
	public void write(final String bName, final String bTitle, final String bContent) {
		String sql="insert into mvc_board(bId,Bname,bTitle,bContent,bHit,bGroup,bStep,bIndent) "
				+ "values(mvc_board_seq.nextval,?,?,?,0,mvc_board_seq.currval,0,0)";
		this.template.update(sql,new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setString(1, bName);
				ps.setString(2, bTitle);
				ps.setString(3, bContent);
			}
		});
	}*/
	
}
