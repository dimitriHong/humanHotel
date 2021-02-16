package javalec.hotel.hpro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MySQLConnectionTest {
	
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String URL = "jdbc:mysql://34.123.125.68:3306/hotelproject?useSSL=false";
    static final String USERNAME = "wdcx11";
    static final String PASSWORD = "wsdf584";
 
    @Test
    public void getMySQLConnectionTest() {
        
        Connection conn = null;
        Statement stmt = null;
        
        try {
            
        	 logger.info("==================== MySQL Connection START ====================");
            
            Class.forName(DRIVER);
            
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            stmt = conn.createStatement();
 
            String sql = "SELECT * FROM HroomManage";
 
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                
                String room_id = rs.getString("room_id");
                String room_name = rs.getString("room_name");
                String room_type = rs.getString("room_type");
 
                logger.info("room_id : {}", room_id);
                logger.info("room_name: {}", room_name);
                logger.info("room_type: {}", room_type);
                logger.info("========================================");
            }
 
            rs.close();
            stmt.close();
            conn.close();
 
        } catch (SQLException se1) {
            se1.printStackTrace();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
            try {
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
        
        logger.info("==================== MySQL Connection END ====================");
    }

}
