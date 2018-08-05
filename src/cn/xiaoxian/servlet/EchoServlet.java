package cn.xiaoxian.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/EchoServlet")//����·��
public class EchoServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
	    String msg=request.getParameter("msg");//��������
	    String jsonpcallback=request.getParameter("jsonpcallback");
	    String info=request.getParameter("info");
	    System.out.println("msg:"+msg+",info="+info);
	    System.out.println("jsonpcallback:"+jsonpcallback);
	    response.getWriter().write(jsonpcallback+"({\"msg\":\""+msg+"\",\"info\":\""+info+"\"})");
	    
	    
	}
}
