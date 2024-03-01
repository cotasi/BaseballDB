package member;

import java.sql.*;

import javax.sql.*;

import javax.naming.*;


public class memberDAO {
    
    private Connection getConnection() {
        
        Connection conn = null;
        
        try {
            
            Context init = new InitialContext();
            
            DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/mysql");
            
            conn = ds.getConnection();
            
            
        } catch(Exception e) {
            
            
            System.err.println("Connection Fail");
            
            
        }
        
        return conn;
        
    }
    
    public boolean idCheck(String userid) {
        
        
        boolean result = true;
        
        Connection conn = null;
        
        PreparedStatement pstmt = null;
        
        ResultSet rs = null;
        
        try {
            
            conn = getConnection();
            
            pstmt = conn.prepareStatement("select * from member where userid = ? ");
            
            pstmt.setString(1, userid);
            
            rs = pstmt.executeQuery();
            
            if(!rs.next()) result = false;
            
            
            
        } catch(SQLException sqle) {
            
            
            sqle.printStackTrace();
            
            
            
          
        }finally {
            
            if(rs != null) try { rs.close(); } catch(SQLException sqle1) {}
            if( pstmt != null) try {pstmt.close();} catch(SQLException sqle2) {}
            if(conn != null) try { conn.close(); } catch(SQLException sqle3) {}
            
            
            
        }
        
        return result;
        
    }

}
