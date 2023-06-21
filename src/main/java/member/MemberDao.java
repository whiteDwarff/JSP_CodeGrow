/**
 * 작성자 : 강문호
 * 기능 : 회원 로그인 처리 및 회원가입/수정/탈퇴
 * Git : https://github.com/whiteDwarff
 **/

package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	
	private Connection getConnection() throws Exception {
		InitialContext init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp//env/jdbc/project01_db");
		Connection con = ds.getConnection();
		
		return con;
	}
	public MemberDto loginDao(String emeil, String passwrod) {
		String sql = "select * from member where email = ? and password = ?";
		MemberDto dto = new MemberDto();
		
		try(Connection con = getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, emeil);
			pstmt.setString(2, passwrod);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setName(rs.getString("name"));
				dto.setEmail(rs.getString("email"));
				dto.setPassword(rs.getString("password"));
				dto.setPhone(rs.getString("phone_number"));
			} 
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public void memberFunction(MemberDto dto,String keyword) {
		
		String sql = "";
		PreparedStatement pstmt = null;
		
		try (Connection con = getConnection();){
			if(keyword.equals("I")) {
				sql = "insert into member (name, email, password, phone_number) values(?,?,?,?)";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, dto.getName());
				pstmt.setString(2, dto.getEmail());
				pstmt.setString(3, dto.getPassword());
				pstmt.setString(4, dto.getPhone());
				
				pstmt.executeUpdate();
				
			} else if(keyword.equals("U")) {
				sql = "update member set  password = ?, phone_number = ? where email = ?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, dto.getPassword());
				pstmt.setString(2, dto.getPhone());
				pstmt.setString(3, dto.getEmail());
				
				pstmt.executeUpdate();
				
			} else if(keyword.equals("D")) {
				sql = "delete from member where email = ?";
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, dto.getEmail());

				pstmt.executeUpdate();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} 
		
	}
}
