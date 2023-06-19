package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Emp;
import com.util.EmpUtil;

public class EmpDao {
	
	public static void insertEmp (Emp e)
	{
		try {
			Connection connection=EmpUtil.creatConnection();
			String sql="insert into Emp(fname,lname,email,mobile,address,gender)values(?,?,?,?,?,?)";
			PreparedStatement pst=connection.prepareStatement(sql);
			pst.setString(1, e.getFname());
			pst.setString(2, e.getLname());
			pst.setString(3, e.getEmail());
			pst.setString(4, e.getMobile());
			pst.setString(5, e.getAddress());
			pst.setString(6, e.getgender());
			pst.executeUpdate();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}
	public static Emp getallEmp(int id)
	{
		Emp e=getallEmp(id);
		try {
			Connection connection=EmpUtil.creatConnection();
			String sql="select * from emp where id=?";
			PreparedStatement pst=connection.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next());
			{
			    e=new Emp();
				e.setId(rs.getInt("id"));
				e.setFname(rs.getNString("fname"));
				e.setLname(rs.getNString("lname"));
				e.setEmail(rs.getString("email"));
				e.setMobile(rs.getString("mobile"));
				e.setAddress(rs.getString("address"));
				e.setgender(rs.getString("gender"));
			}
		} catch (Exception e1) {
		e1.printStackTrace();
		}
		return e;
		
		
	}

}
