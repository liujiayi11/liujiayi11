package cn.zkingsoft.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import cn.zkingsoft.dao.StudentDaoImpl;
import cn.zkingsoft.pojo.Student;
import cn.zkingsoft.web.core.ActionForm;
import cn.zkingsoft.web.core.ActionForward;
import cn.zkingsoft.web.core.DispatcherAction;
import cn.zkingsoft.web.form.StudentForm;

public class StudentAction extends DispatcherAction{
	
	private StudentDaoImpl sd = new StudentDaoImpl();
	
	public ActionForward selectAll(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {
		List<Student> list =  sd.selectAllStudent();
		//request.setAttribute("list", list);
		//return new ActionForward("index");
		JSONArray js = JSONArray.fromObject(list);
//		//获得响应输出流
		PrintWriter out = reponse.getWriter();
		out.print(js.toString());
		out.flush();
		out.close();
		return null;
	}
	
	
	
	public ActionForward deleteStudent(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
	throws ServletException, IOException {
		StudentForm sf = (StudentForm)form;
		int sid = Integer.parseInt(sf.getSid());
		boolean flag = sd.deleteStudent(sid);
		return selectAll(request, reponse, form);
	}
	
	
//	public ActionForward test(HttpServletRequest request,
//			HttpServletResponse reponse, ActionForm form)
//	throws ServletException, IOException {
//		StudentForm sf = (StudentForm)form;
//		//获得传入的字符串
//		String stustr = sf.getData();
//		//将字符串转换成json对象
//		JSONObject jsonObject = JSONObject.fromObject(stustr);
//		//将json对象转成bean对象
//		Student stu = (Student)JSONObject.toBean(jsonObject, Student.class);
//		stu.setSid(stu.getSid()*2);
//		stu.setSname(stu.getSname().toUpperCase());
//		stu.setScore(stu.getScore()*2);
//		
//		//将对象变为json格式的字符串
//		JSONObject json = JSONObject.fromObject(stu);
//		//获得响应输出流
//		PrintWriter out = reponse.getWriter();
//		out.print(json.toString());
//		out.flush();
//		out.close();
//		return null;
//	}
}
