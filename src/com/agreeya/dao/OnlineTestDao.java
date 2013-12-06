package com.agreeya.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.agreeya.dto.UserBean;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class OnlineTestDao {
	public void registerUser(UserBean user){      //insert user detail
		Connection con;
		PreparedStatement stm;
		try {
			con=DatabaseConnection.getConnection();
			String password=user.getPassword();
			String encoded=Base64.encode(password.getBytes());
			System.out.println("encoded password"+encoded);
			System.out.println("inside dao address="+user.getAddress());
			String str=("insert into register_user(first_name,last_name,username,user_password,date_of_birth,contact_no,email_id,gender,address,city,country,pin_code) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			stm=con.prepareStatement(str);
			stm.setString(1,user.getFirstName());
			stm.setString(2,user.getLastName());
			stm.setString(3,user.getUsername());
			stm.setString(4,encoded);
			stm.setString(5,user.getDob());
			stm.setString(6,user.getContactNo());
			stm.setString(7,user.getEmailId());
			stm.setString(8,user.getGender());
			stm.setString(9,user.getAddress());
			stm.setString(10,user.getCity());
			stm.setString(11,user.getCountry());
			stm.setString(12,user.getPinCode());
			stm.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	public boolean adminLogin(UserBean user){     //user login
	boolean status=false;
		Connection con=null;
		PreparedStatement stm=null;
		try{ 
			try {
				con = DatabaseConnection.getConnection();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			stm=con.prepareStatement("select username,admin_password from admin where username=? and admin_password=?");
			stm.setString(1,user.getUsername()); 
			stm.setString(2,user.getPassword());
			ResultSet rs=stm.executeQuery();
		    status=rs.next();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return status;
	}

}
