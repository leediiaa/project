package cml.stu;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cml.bean.SelectCourse;

/**
 * Servlet implementation class select
 */

public class select extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public select() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(true);
	    String [] courses = request.getParameterValues("selected");
	    String name = (String)session.getAttribute("username");
	    String studentId = null;
	    
	    if(courses==null){
	       out.print("<script language=javascript>alert('您还没有选择课程！！！');window.location.href='../FinalProject/selectCourse.jsp';</script>");
	    }
	    else{  
	       SelectCourse sc = new SelectCourse();
	       try {
			studentId = sc.selectId(name);
		} catch (ClassNotFoundException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}
	       try {
			if(sc.isExit(courses,studentId)){
			        out.print("<script language=javascript>alert('不能重复选择课程！！！');window.location.href='../FinalProject/selectCourse.jsp';</script>");
			   }else{
			   for(int i=0;i<courses.length;i++){
			     String courseId = courses[i];
			     sc.addCourse(courseId,studentId); 
			    }
			  response.sendRedirect("/FinalProject/selected.jsp");
			  //request.getRequestDispatcher("/student/selected.jsp").forward(request, response);
			  
			  }
		} catch (ClassNotFoundException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	     }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
