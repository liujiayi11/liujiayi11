package cn.zkingsoft.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.zkingsoft.db.DBHelper;
import cn.zkingsoft.pojo.Student;

public class StudentDaoImpl {
	public List<Student> selectAllStudent(){
		List<Student> list = new ArrayList<Student>();
		Connection conn = DBHelper.getConnection();
		String sql = "select * from student";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Student s = new Student();
				s.setSid(rs.getInt("sid"));
				s.setSname(rs.getString("sname"));
				s.setScore(rs.getDouble("score"));
				list.add(s);
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBHelper.closeConnection(conn);
		}
		return list;
	}
	public boolean deleteStudent(int sid){
		Connection conn = DBHelper.getConnection();
		String sql = "delete from student where sid=?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, sid);
			int result = ps.executeUpdate();
			if(result>0){
				return true;
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DBHelper.closeConnection(conn);
		}
		return false;
	}
}
