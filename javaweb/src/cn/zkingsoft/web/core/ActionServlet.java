package cn.zkingsoft.web.core;

import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ActionServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//��Ӧ�ó������ó�������Ϣ
		Properties config = (Properties)this.getServletContext().getAttribute("config");
		//��Ӧ�ó������ó�action��
		//������������Ϊkey����Ӧ��ʵ����Ϊֵ
		Properties actionPool = (Properties)this.getServletContext().getAttribute("actionPool");
		//�õ�ҳ���ύ��·��
		String uri = req.getRequestURI();
		//������һ��б�ܺ͵���н�ȡ
		int a = uri.lastIndexOf("/");
		int b = uri.lastIndexOf(".");
		if(b>a && a>0){
			uri = uri.substring(a+1, b);
		}
		//============form�Ĳ���================================
		String formKey = uri+"Form";//calcForm
		//cn.zkingsoft.web.form.CalcForm
		String formClassName = config.getProperty(formKey);
		ActionForm form = null;
		try {
			//ʵ������form
			Class c = Class.forName(formClassName);
			form = (ActionForm)c.newInstance();
			//�õ�ҳ�����е��������
			Map<String, String[]> map  = req.getParameterMap();
			Set<Map.Entry<String, String[]>> set = map.entrySet();
			Iterator<Map.Entry<String, String[]>> it = set.iterator();
			while(it.hasNext()){
				Map.Entry<String, String[]> me = it.next();
				String key = me.getKey();
				String[] values = me.getValue();
				//key����first����second
				String methodName = "set"+key.substring(0, 1).toUpperCase()+key.substring(1);
				Method m = c.getMethod(methodName, new Class[]{String.class});
				//����set����
				m.invoke(form, values[0]);
			}
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		//============================================
		//����ȡ��uri��Ϊkey�����������ҵ�Ҫ�������
		String className = config.getProperty(uri);
		Action action = null;
		try {
			action = (Action)actionPool.get(className);
			if(action==null){
				//��ʾ��һ�η��ʸ�action
				action = (Action)Class.forName(className).newInstance();
				//����action��
				actionPool.put(className, action);
			}
			//����execute�õ�Actionforward
			ActionForward af = action.execute(req,resp,form);
			//��ת
			if(af!=null){
				af.forward(req, resp);
			}
		//============================================
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void init() throws ServletException {
		//Ӧ�ó�ʼ���Ͷ�ȡ�����ļ�
		String path = this.getServletContext().getRealPath("/");
		path += this.getInitParameter("configLocation");
		//����
		Properties config = new Properties();
		//���actionʵ���ĳ�
		Properties actionPool = new Properties();
		try {
			config.load(new FileInputStream(path));
		} catch (Exception e) {
			e.printStackTrace();
		}
		//����Ӧ�ó�����
		this.getServletContext().setAttribute("config", config);
		this.getServletContext().setAttribute("actionPool", actionPool);
	}
	
}
